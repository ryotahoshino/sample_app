class ResultsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @results = Result.all
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
    if @result.save
      redirect_to result_path(@result)
    else
      render :new
    end
  end

  def edit
    @result =Result.find(params[:id])
    if @result.user != current_user
      redirect_to result_path, alert: '不正なアクセスです'
    end
  end

  def update
    @result = Result.find(params[:id])
    if @result.update(result_params)
      redirect_to result_path(@result)
    else
      render :new
    end
  end

  def destroy
    result = Result.find(params[:id])
    result.destroy
    redirect_to user_path(result.user)
  end

  private
  def result_params
    params.require(:result).permit(:title, :body, :image)
  end
end
