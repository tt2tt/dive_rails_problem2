class PicturesController < ApplicationController
  def index

  end

  def new
    @picture = Picture.new

  end

  def create
    @picture = current_user.pictures.build(picture_params)
  end

  private

  def picture_params
    params.require(:picture).permit(:content, :image)
  end
end
