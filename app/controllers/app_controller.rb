class AppController < ApplicationController
  def index

    @courses = Course.paginate(:page => params[:page], :per_page => 6).all

  end
end
