class SessionsController < ApplicationController

  def new
    render :new
  end

  def index
  end

  def create
      if session[:name]
        session[:name] = params[:name]
        redirect_to '/'
      else
        redirect_to (controller: 'sessions', action: 'new')
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
