class WinesController < ApplicationController
  def index
    @wines = @current_user.wines || Wine.all
  end
end