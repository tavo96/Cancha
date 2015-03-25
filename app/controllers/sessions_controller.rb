class SessionsController < ApplicationController
  
def new
end

def create
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to "/starts", :notice => "Session inciada!"
  else
    flash.now.alert = "Email o Contrasena invalidos"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Session cerrada!"
end

end
