class SessionsController < ApplicationController

  def new
    render :new
  end

  def index
  end

  def create
      if params[:name].present?
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
