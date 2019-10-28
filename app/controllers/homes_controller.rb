class HomesController < ApplicationController
  def index
    @home = Home.new
  end

  def create
    @home = Home.create(home_params)
    if @home.invalid?
      flash[:error] = 'Bad Email!'
    end
    redirect_to root_path
  end

  def home_params
    params.require(:home).permit(:name, :email)
  end

  def show
  end

end