# encoding: utf-8
class MembersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.page(params[:page]).order('id DESC')
  end

  def show
    @user = User.find(params[:user_id])
    @subscriber = Subscriber.where({:user_id => @user.id}).all
    @vips = Vip.where(:user_id => @user.id).all
  end

  def new
    puts params
    if params[:user]

      @user = User.create({:email => params[:user][:email], :password => params[:user][:password], :password_confirmation => params[:user][:password_confirmation]});
      puts @user
      respond_to do |format|
        format.html { redirect_to members_path , :notice => 'Add success' }
      end
    end

    @user = User.new
  end

end