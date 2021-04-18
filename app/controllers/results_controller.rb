class ResultsController < ApplicationController
  def index
  end

  def show
    @result = Result.find(params[:id])
  end

  def new
    @result = Result.new
  end

  def create
    @result = Result.new(result_params)
    @result.user_id = current_user.id
    @result.save
    redirect_to result_path(@result)
  end

  def edit
  end

  private
  def result_params
    params.require(:result).permit(:title, :body, :image)
  end

end
