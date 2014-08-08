class SessionsController < ApplicationController
  def new
    @locations = Location.all
  end

  def create
    user = Human.first #authenticate(params[:cu], params[:password])

    if user and params["/sessions"][:location]
      session[:user_id] = user.id
      session[:location] = params["/sessions"][:location]
      redirect_to root_url, :notice => "Logged in!"
    else
      @locations = Location.all
      unless user
        flash.now.alert = "codice badge o password sbagliati"
      else
        flash.now.alert = "Selezionare il posto medico"
      end
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
