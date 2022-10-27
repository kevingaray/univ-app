class LoginsController < ApplicationController
  skip_before_action :require_user, only: [:new, :create]
  def new
  end

  def create
    student = Student.find_by(email: params[:login][:email].downcase)
    if student && student.authenticate(params[:login][:password])
      session[:student_id]=student.id
      flash[:notice] = "Successfully logged in"
      redirect_to student
    else
      flash.now[:notice] = "Something whent wrong"
      render 'new'
    end
  end

  def destroy
    session[:student_id]=nil
    flash[:notice] = "Successfully logged out"
    redirect_to root_path
  end
  
end