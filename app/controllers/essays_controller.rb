class EssaysController < ApplicationController
  def new
    @essay = Essay.new
  end

  def create
    @essay=Essay.create(essay_params)
    if @essay.save
      redirect_to admin_dashboard_path, notice: "Essay Successfully Added"
    else
      render :new
    end
  end

  def index
    @essays = Essay.all
  end

  def show
    @essay = Essay.find_by id: params[:id]
  end

  def edit
    @essay = Essay.find_by id: params[:id]
  end

  def update
    @essay = Essay.find_by id: params[:id]
    if @essay.update(essay_params)
      redirect_to admin_dashboard_path, notice: "Essay Details Successfully Updated"
    else
      render :edit
    end
  end

  def delete
      @essay = Essay.find_by id: params[:id]
      @essay.destroy
      redirect_to admin_dashboard_path, notice: 'Essay Details Removed'
  end

  def essay_params
    params.require(:essay).permit(:title, :publication, :year, :publisher, :book_author, :link)
  end
end
