class AppController < ApplicationController
  def index

    UserNotifier.send_signup_email(current_user).deliver
    @courses = Course.paginate(:page => params[:page], :per_page => 6).all

  end

  def all
    @catalogs = Catalog.includes(:courses =>  :chapters ).all
  end
end
