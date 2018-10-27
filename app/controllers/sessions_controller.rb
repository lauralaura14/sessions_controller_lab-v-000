class SessionsController < ApplicationController

  def new
    render :new
  end

  def hello
    if !logged_in?
      redirect_to '/login'
    else
      @name = name
    end
  end

  def create
      if !params[:name].nil?
        session[:name] = params[:name]
        redirect_to '/'
      else
        redirect_to '/sessions/new'
      end
  end

  def destroy
    if session[:name]
      session.delete :name
    else
      session[:name] = nil
    end
  end

end
