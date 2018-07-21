class MainController < ApplicationController

  def index
  end

  def create
    raise ActiveRecord::RecordInvalid
  rescue ActiveRecord::RecordInvalid
    redirect_to root
  end

end
