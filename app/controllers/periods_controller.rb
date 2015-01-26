class PeriodsController < ApplicationController
  helper_method :device_type
  before_action :set_period, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show]
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  respond_to :html

  def index
    @periods = Period.all
    respond_with(@periods)
  end

  def show

    history = History.find_by(:period_id => @period.id , :user_id => current_user.id)
    if history
      history.destroy
    end
    History.create({:period_id => @period.id , :user_id => current_user.id});

    @profile = current_user.user_profile
    if @profile == nil
      respond_to do |format|
        format.html { redirect_to new_user_profile_path , :notice => '请先完善你的资料' }
      end
    else
      respond_with(@period)
    end
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

  def device_type
    request.env['mobvious.device_type']
  end

  private
    def set_period
      @period = Period.find(params[:id])
    end

    def period_params
      params.require(:period).permit(:subject, :content, :medium, :cover, :reference, :quiz, :chapter_id)
    end


end
