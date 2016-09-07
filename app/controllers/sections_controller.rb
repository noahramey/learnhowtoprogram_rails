class SectionsController < ApplicationController
  def show
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:id])
    render :show
  end

  def new
    @course = Course.find(params[:course_id])
    @section = @course.sections.new
    render :new
  end

  def create
    @course = Course.find(params[:course_id])
    @section = @course.sections.new(section_params)
    if @section.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:id])
    render :edit
  end

  def update
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:id])
    if @section.update(section_params)
      redirect_to course_path(@section.course)
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to course_path(@course)
  end   

private
  def section_params
    params.require(:section).permit(:name, :course_id)
  end
end
