module ParentsHelper

  def sign_in(parent)
    session[:parent_id] = parent.id
    self.current_parent = parent
  end
  
  # setter method
  def current_parent=(parent)
    @current_parent = parent
  end

  # getter method
  def current_parent
    @current_parent ||= parent.find(session[:parent_id]) if session[:parent_id]
  end

  def signed_in?
    !current_parent.nil?
  end

  def sign_out
    session[:parent_id] = nil
    self.current_parent = nil
  end

  def current_parent?(parent)
    parent == current_parent 
  end

  def deny_access
    redirect_to welcome_path, :notice => "Please sign in to access this page."
  end

end
