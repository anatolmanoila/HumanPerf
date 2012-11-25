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
end
