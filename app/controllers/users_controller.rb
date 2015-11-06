class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = user.find(params[:id])
  end


  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render('new')
    end
  end

  def search_results
    #Client.where("orders_count = ?", params[:orders])
    @users = User.where("name = ?", params[:search])
  end

  def designers
    @designers = User.where({designer:true});
  end

  def developer
    @designers = User.where({developer:true});
  end

  #whitelisting only the paramaters we want to allow to be used in the form
  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:bio,:designer,:developer)
  end
end
