class Resort < ApplicationRecord
  belongs_to :user
  belongs_to :airport
  has_many :photos

  validates :name, presence: true
  validates :region, presence: true
  validates :country, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :website_url, presence: true

  def country_name
    country = ISO3166::Country[country]
    country.translations[I18n.locale.to_s] || country.name
  end

    def cover_photo(size)
    if self.photos.length > 0
      self.photos[0].image.url(size)
    else
      "blank.jpg"
    end
  end

end
