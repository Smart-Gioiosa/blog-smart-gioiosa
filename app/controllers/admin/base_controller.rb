class Admin::BaseController < ActionController::Base
 before_action :authenticate_user!
 before_action :is_admin?

def is_admin?
  if current_user.admin?
    true
  else
    redirect_back(fallback_location: root_path)
  end
end
 layout 'admin'
end
