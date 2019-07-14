class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def new
    if params[:back]
      @picture = Picture.new(picture_params)
    else
      @picture = Picture.new
    end
  end

  def show
  end

  def edit
  end

  def confirm
    @picture = Picture.new(picture_params)
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    if @picture.save
      redirect_to pictures_path, notice: "投稿しました"
    end
  end

  def update
    if @picture.update(picture_params)
      redirect_to pictures_path, notice: "編集しました"
    end
  end

  def destroy
    @picture.destroy
    redirect_to pictures_path, notice: "削除しました"
  end

  private

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:content, :image, :image_cache)
  end
end
