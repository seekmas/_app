class SubscribersController < ApplicationController
  before_action :set_subscriber, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @subscribers = Subscriber.all
    respond_with(@subscribers)
  end

  def my_course
    @subscribers = Subscriber.where({:user_id => current_user.id}).all
  end

  def show
    respond_with(@subscriber)
  end

  def new
    @subscriber = Subscriber.new
    respond_with(@subscriber)
  end

  def edit
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    @subscriber.save
    respond_with(@subscriber)
  end

  def update
    @subscriber.update(subscriber_params)
    respond_with(@subscriber)
  end

  def destroy
    @subscriber.destroy
    respond_with(@subscriber)
  end

  private
    def set_subscriber
      @subscriber = Subscriber.find(params[:id])
    end

    def subscriber_params
      params.require(:subscriber).permit(:course_id, :user_id)
    end
end
