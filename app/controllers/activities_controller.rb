class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  # private

  # def activity_params
  #   params.require(:activity).permit(:name, :duration, :cost, :address, :photo)
  # end

end
