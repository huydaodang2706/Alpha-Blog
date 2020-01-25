class UsersController < ApplicationController

  def index
      @users = User.all.page(params[:page]).per(5)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "New user has been created"
      redirect_to articles_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @user_articles = @user.articles.page(params[:page]).per(5) 
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "User account has successfully edited"
      redirect_to articles_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username,:email,:password)
  end
end
