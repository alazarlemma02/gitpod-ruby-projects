class CoursesController < ApplicationController

  #index
  def index
    @courses = Course.all
    render json: {success: true, data:@courses}
  end

  #show
  def show
    @courses = Course.find(params[:id])
  end

  #create
  def create
    @courses = Object.new(model_params)
    if @courses.save
      flash[:success] = "Course successfully created"
      redirect_to @courses
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  #update
  def update
    @courses = Course.find(params[:id])
      if @courses.update_attributes(model_params)
        render json: {success: true, data: @courses}
      else
        render json: {success: false, error: @courses.error}
      end
  end

  private
  #model params
  def model_params
    params.require(:payload).permit(:name, :code, :status)
  end
end
