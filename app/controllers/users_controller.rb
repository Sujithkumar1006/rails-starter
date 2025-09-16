class UsersController < ApplicationController
  before_action :set_user, except: %i[index active]


  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user.as_json
  end

  def active
    @users = User.active
    render json: @users
  end

  def activate
    render json: @user if @user.activate
  end

  def update
    if @user.update(user_params)
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy!
    render json: { message: "Success" }, status: :created
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:age)
  end
end
