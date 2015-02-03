# encoding: utf-8
class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  respond_to :html

  def index
    @courses = Course.order(:catalog_id => :asc ).all
    #respond_with(@courses)

    respond_to do |format|
      format.html { @courses }
      format.xls {
        filename = "courses-#{Time.now.strftime("%Y%m%d%H%M%S")}.xls"
        send_data(@courses.to_xls(:only => [:id, :subject, :description, :reference, :trouble, :catalog_id, :vip_allowed, :enabled, :flag, :flag_color]), :type => "application/excel; charset=utf-8; header=present", :filename => filename)
      }
    end
  end

  def show

    authenticate_user!

    if @course.vip_allowed == true
      @vip = Vip.order(:id => :desc).find_by({:user_id => current_user.id })
      if @vip == nil or Time.now > @vip.expired_at
        return respond_to do |format|
          format.html { redirect_to to_be_vip_path , :notice => '你还不是VIP会员/VIP已经到期' }
        end
      end
    end

    @chapters = Chapter.where(:course_id => @course.id).all

    respond_with(@course)
  end

  def new
    @course = Course.new
    respond_with(@course)
  end

  def edit
  end

  def create
    @course = Course.new(course_params)
    @course.save
    respond_with(@course)
  end

  def update
    @course.update(course_params)
    respond_with(@course)
  end

  def destroy
    @course.destroy
    respond_with(@course)
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:subject, :vip_allowed, :flag, :flag_color, :description, :pdf, :cover, :reference, :trouble, :catalog_id, :enabled)
    end
end
