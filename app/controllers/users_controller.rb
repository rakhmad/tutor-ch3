class UsersController < ApplicationController
  
  def index
  end
  
  def edit   
  end
  
  def update    
  end
  
  def delete    
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "New user created."
      redirect_to @user
    else
      render 'new'
    end     
  end
  
  def new
    @user = User.new  
  end
  
  def show
    @user = User.find(params[:id])
  end
end

