class NewsfeedsController < ApplicationController
  before_action :set_newsfeed, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @newsfeeds = Newsfeed.all
    respond_with(@newsfeeds)
  end

  def show
    respond_with(@newsfeed)
  end

  def new
    @newsfeed = Newsfeed.new
    respond_with(@newsfeed)
  end

  def edit
  end

  def create
    @newsfeed = Newsfeed.new(newsfeed_params)
    @newsfeed.save
    respond_with(@newsfeed)
  end

  def update
    @newsfeed.update(newsfeed_params)
    respond_with(@newsfeed)
  end

  def destroy
    @newsfeed.destroy
    respond_with(@newsfeed)
  end

  private
    def set_newsfeed
      @newsfeed = Newsfeed.find(params[:id])
    end

    def newsfeed_params
      params.require(:newsfeed).permit(:subject, :content, :enabled, :order_id)
    end
end
