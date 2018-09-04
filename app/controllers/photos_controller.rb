class PhotosController < ApplicationController

  def create
    @resort = Resort.find(params[:resort_id])

    if params[:images]
      params[:images].each do |img|
        @resort.photos.create(image: img)
      end

      @photos = @resort.photos
      redirect_back(fallback_location: request.referer, notice: "Saved...")
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @resort = @photo.resort

    @photo.destroy
    @photos = Photo.where(resort_id: @resort.id)

    respond_to :js
  end
end
