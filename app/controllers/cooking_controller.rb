class CookingController < ApplicationController
  def index
    @foodtype = CookingApi.get_foodvideo(params[:fooditem])
  end
end
