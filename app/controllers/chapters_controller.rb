class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  respond_to :html

  def index
    @chapters = Chapter.all
    respond_with(@chapters)
  end

  def show
    respond_with(@chapter)
  end

  def new
    @chapter = Chapter.new
    respond_with(@chapter)
  end

  def edit
  end

  def create
    @chapter = Chapter.new(chapter_params)
    @chapter.save
    respond_with(@chapter)
  end

  def update
    @chapter.update(chapter_params)
    respond_with(@chapter)
  end

  def destroy
    @chapter.destroy
    respond_with(@chapter)
  end

  private
    def set_chapter
      @chapter = Chapter.find(params[:id])
    end

    def chapter_params
      params.require(:chapter).permit(:subject, :description, :order_id, :course_id)
    end
end
