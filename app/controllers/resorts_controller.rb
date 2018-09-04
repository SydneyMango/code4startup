class ResortsController < ApplicationController
  before_action :set_resort, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]

  def index
    @resorts=current_user.resorts
  end

  def new
    @resort = current_user.resorts.build
  end

  def create
    @resort = current_user.resorts.build(resort_params)
    if @resort.save!
      redirect_to listing_resort_path(@resort), notice: "Saved..."
    else
      flash[:alert] = "Something went wrong..."
      render :new
    end
  end

  def show
  end

  def listing
  end

  def description
  end

  def photo_upload
  end

  def features
  end

  def location
  end

  def update
    if @resort.update(resort_params)
      flash[:notice] = "Saved..."
    else
      flash[:alert] = "Something went wrong..."
    end
    redirect_back(fallback_location: request.referer)
  end

  private

  def set_resort
    @resort = Resort.find(params[:id])
  end

  def resort_params
      params.require(:resort).permit(:name, :region, :airport_id, :user_id, :country, :address, :description, :website_url, :contact_url, :bookings_url, :surfing, :eco_friendly, :yoga, :sup, :rock_climbing, :day_spa, :cycling, :mountain_biking, :diving, :snorkling, :hiking, :skiing, :nowboarding, :vegan, :vegetarian, :golfing, :gym, :active)
  end

end
