class LecturesController < ApplicationController
  def new
    @lecture = Lecture.new
  end

  def create
    @lecture=Lecture.create(lecture_params)
    if @lecture.save
      redirect_to admin_dashboard_path, notice: "Lecture Successfully Added"
    else
      render :new
    end
  end

  def index
    @lectures = Lecture.all
  end

  def show
    @lecture = Lecture.find_by id: params[:id]
  end

  def edit
    @lecture = Lecture.find_by id: params[:id]
  end

  def update
    @lecture = Lecture.find_by id: params[:id]
    if @lecture.update(lecture_params)
      redirect_to admin_dashboard_path, notice: "Lecture Details Successfully Updated"
    else
      render :edit
    end
  end

  def delete
      @lecture = Lecture.find_by id: params[:id]
      @lecture.destroy
      redirect_to admin_dashboard_path, notice: 'Lecture Details Removed'
  end

  def lecture_params
    params.require(:lecture).permit(:title, :institution, :date, :link, :description, :year)
  end
end
