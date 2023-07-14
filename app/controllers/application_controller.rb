class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def after_sign_in_path_for(resource)
    if current_user.username && current_user.avatar
      itineraries_path
    else
      
  end
end

def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end
