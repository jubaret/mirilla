class BusinessUnitsController < ApplicationController
  def index
    @bu_list = BusinessUnit.all

    @markers = @bu_list.geocoded.map do |bu|
      {
        lat: bu.latitude,
        lng: bu.longitude,
        # info_window: render_to_string(partial: "info_window", locals: { car: bu }),
        # image_url: car.photo.key,
        # price: car.price_per_day
      }
    end
  end
end
