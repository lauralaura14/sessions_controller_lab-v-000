class SessionsController < ApplicationController

  def new
  end

  def create
    if !name.present?
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end

end
