class ApplicationController < ActionController::Base
	helper_method :admin?
  protect_from_forgery
  def after_sign_in_path_for(user)
  	departments_path


 end

def admin?
false
redirect_to departments_path
end


end
