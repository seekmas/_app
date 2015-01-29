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

  def vip
    @wishlist = Wishlist.new
  end

  def subscriber
    @subscriber = Subscriber.find_by({ :user_id => current_user.id , :course_id => params[:course_id]})
    if @subscriber == nil
      @subscriber = Subscriber.create({ :user_id => current_user.id , :course_id => params[:course_id]})
      @subscriber.save
    end
    respond_to do |format|
      format.html { redirect_to course_path(Course.find(params[:course_id]))  , :notice => '订阅成功，你可以在我的课程里找到本课' }
    end
  end

  def cancel_subscriber
    @subscriber = Subscriber.find_by({ :user_id => current_user.id , :course_id => params[:course_id]})
    @subscriber.destroy

    respond_to do |format|
      format.html { redirect_to course_path(Course.find(params[:course_id]))  , :notice => '取消订阅成功' }
    end
  end

end
