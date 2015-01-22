class PeriodsController < ApplicationController
  before_action :set_period, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  respond_to :html

  def index
    @periods = Period.all
    respond_with(@periods)
  end

  def show
    respond_with(@period)
  end

  def new
    @period = Period.new
    respond_with(@period)
  end

  def edit
  end

  def create
    @period = Period.new(period_params)
    @period.save
    redirect_to new_period_path
  end

  def update
    @period.update(period_params)
    respond_with(@period)
  end

  def destroy
    @period.destroy
    respond_with(@period)
  end

  private
    def set_period
      @period = Period.find(params[:id])
    end

    def period_params
      params.require(:period).permit(:subject, :content, :medium, :cover, :reference, :quiz, :chapter_id)
    end
end
