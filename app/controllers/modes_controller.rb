class ModesController < ApplicationController
  before_action :set_mode, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:show]
  respond_to :html

  def index
    @modes = Mode.all
    respond_with(@modes)
  end

  def show
    respond_with(@mode)
  end

  def new
    @mode = Mode.new
    respond_with(@mode)
  end

  def edit
  end

  def create
    @mode = Mode.new(mode_params)
    @mode.save
    respond_with(@mode)
  end

  def update
    @mode.update(mode_params)
    respond_with(@mode)
  end

  def destroy
    @mode.destroy
    respond_with(@mode)
  end

  private
    def set_mode
      @mode = Mode.find(params[:id])
    end

    def mode_params
      params.require(:mode).permit(:subject, :content)
    end
end
