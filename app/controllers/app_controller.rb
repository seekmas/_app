class AppController < ApplicationController
  before_action :authenticate_user! , only:[:history]

  def index
    # if current_user
    #   UserNotifier.send_signup_email(current_user).deliver
    # end

    @courses = Course.where(:enabled => true).paginate(:page => params[:page], :per_page => 6).all

  end

  def all
    @catalogs = Catalog.includes(:courses ).all
  end

  def history
    @histories = History.where(:user_id => current_user.id).order(:id => :desc).all
  end
end
