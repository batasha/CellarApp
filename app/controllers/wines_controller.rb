class WinesController < ApplicationController
  respond_to :json
  def index
    @wines = self.current_user.wines || Wine.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @wines }
    end
  end

  def new

  end

  def create

  end
end