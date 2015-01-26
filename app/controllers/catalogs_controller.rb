class CatalogsController < ApplicationController
  before_action :set_catalog, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  respond_to :html

  def index
    @catalogs = Catalog.includes(:courses).all
    respond_with(@catalogs , @course)
  end

  def show
    @courses = Course.where(:catalog_id => @catalog.id).paginate(:page => params[:page], :per_page => 6).all
    respond_with(@catalog)
  end


  def new
    @catalog = Catalog.new
    respond_with(@catalog)
  end

  def edit
  end

  def create
    @catalog = Catalog.new(catalog_params)
    @catalog.save
    respond_with(@catalog)
  end

  def update
    @catalog.update(catalog_params)
    respond_with(@catalog)
  end

  def destroy
    @catalog.destroy
    respond_with(@catalog)
  end

  private
    def set_catalog
      @catalog = Catalog.find(params[:id])
    end

    def catalog_params
      params.require(:catalog).permit(:subject, :description, :enabled, :cover)
    end
end
