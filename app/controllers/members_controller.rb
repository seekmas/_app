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
    if params[:user]
      @user = User.create({ :username => params[:user][:username], :email => params[:user][:email], :password => params[:user][:password], :password_confirmation => params[:user][:password_confirmation]});
      respond_to do |format|
        format.html { redirect_to members_path , :notice => 'Add success' }
      end
    end
    @user = User.new
  end

  def edit
    @user = User.find(params[:user_id])
    if params[:user]
      if params[:user][:encrypted_password]!= '' and params[:user][:password_salt] != ''
        @user.update({:encrypted_password => params[:user][:encrypted_password] , :password_salt => params[:user][:password_salt]})
      end
    end
  end

end