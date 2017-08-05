class GalleriesController < ApplicationController
  def index
    @images = Gallery.all
    @image = Gallery.new
  end

  def create
    @image = Gallery.new(image_params)

    if @image.save
      render json: { message: "success", fileID: @image.id }, status: 200
    else
      render json: { error: @image.errors.full_messages.join(',')}, status: 400
    end
  end

  def destroy
    @image = Gallery.find(params[:id])
    @image.destroy
    redirect_to galleries_path
  end

  private
  def image_params
    params.require(:image).permit(:image)
  end
end
