class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user, only: %i[ update destroy ]

  def index
    @users = User.where.not(email: current_user.email)
              .joins(:department)
              .where(departments: { name: current_user.department.name })
              .order("created_at DESC")
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    authorize @user  
    if @user.save
      @user.update(role: :team_member)
      Department.create(name: current_user.department.name, user_id: @user.id)
      redirect_to root_path, notice: "User created successfully!"
    else
      redirect_to root_path, alert: "Unable to create user due to #{@user.errors.full_messages.first}"
    end
  end

  
  def update
    if @user.update(user_params)
      authorize @user
      redirect_to root_path, notice: "User updated successfully!"
    else
      redirect_to root_path, alert: "Unable to create user due to #{@user.errors.full_messages.first}"
    end
  end

  def destroy
    authorize @user
    @user.destroy
    redirect_to root_path, notice: "User removed successfully!"
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def authorize_user
    
  end
  
end
