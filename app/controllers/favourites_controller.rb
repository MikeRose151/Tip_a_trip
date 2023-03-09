class FavouritesController < ApplicationController

  def create
    @favourite = Favourite.new
    @favourite.user_id = current_user.id
    @activity = Activity.find(params[:activity_id])
    @favourite.activity_id = @activity.id
    if @favourite.save
      redirect_to activities_path
    else
      render activities_path
    end

  end

end
