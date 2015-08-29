class DashboardController < ApplicationController

  def home
  end

  def sign_in_user2
    if params.has_key? "kid_id"
      session[:current_kid] = params["kid_id"]
      session[:parent_signed_in]=false
      flash[:notice] = "Signed in as #{current_kid.name}"
    else
      flash[:notice] = "Signed in as parent"
      session[:parent_signed_in]=true
      session.delete :current_kid
    end
    render "home"
  end

  def sign_out_user2
    session.delete :parent_signed_in
    session.delete :current_kid
    flash[:notice] = "Logged out"
    render "home"
  end

end
