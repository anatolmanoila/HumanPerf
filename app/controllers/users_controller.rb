class UsersController < ApplicationController

  def show
  	@user = User.find(params[:id]) #here is how to get the value out of a hash using [] and passing the symbol :id
  end

   def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    sign_in @user
    if @user.save
      flash[:success] = "Welcome to the Human Perfection App!"
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      # Handle a successful update.
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end
end
