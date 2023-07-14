class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def after_sign_in_path_for(resource)
    if current_user.username && current_user.photo.id
      itineraries_path
    else
      edit_user_path(current_user)
    end
  end
end

def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end
