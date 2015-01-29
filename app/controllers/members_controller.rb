# encoding: utf-8
class MembersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.page(params[:page]).order('created_at DESC')
  end

  def show
    @user = User.find(params[:user_id])

    @subscriber = Subscriber.where({:user_id => current_user.id}).all

    @vips = Vip.where(:user_id => current_user.id).all
  end

end