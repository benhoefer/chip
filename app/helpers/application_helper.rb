module ApplicationHelper

  def parent_signed_in?
    session[:parent_signed_in]
  end

  def current_kid
    if session[:current_kid]
      return Kid.find(session[:current_kid])
    else
      return nil
    end
  end

  def standard_alert
    "Oops! There was an issue with your form, please resolve"
  end

end
