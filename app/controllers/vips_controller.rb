# encoding: utf-8
class VipsController < ApplicationController
  before_action :set_vip, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vips = Vip.all
    respond_to do |format|
      format.html { @vips }
      format.xls {
        filename = "vips-#{Time.now.strftime("%Y%m%d%H%M%S")}.xls"
        send_data(@vips.to_xls(:only => [:id, :user_id, :expired_at, :description]), :type => "application/excel; charset=utf-8; header=present", :filename => filename)
      }
    end
  end

  def show
    respond_with(@vip)
  end

  def new
    @vip = Vip.new
    respond_with(@vip)
  end

  def edit
  end

  def create
    @vip = Vip.new(vip_params)
    @vip.save
    respond_with(@vip)
  end

  def update
    @vip.update(vip_params)
    respond_with(@vip)
  end

  def destroy
    @vip.destroy
    respond_with(@vip)
  end

  private
    def set_vip
      @vip = Vip.find(params[:id])
    end

    def vip_params
      params.require(:vip).permit(:user_id, :expired_at, :description)
    end
end
