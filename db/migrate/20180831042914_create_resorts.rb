class CreateResorts < ActiveRecord::Migration[5.2]
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :region
      t.string :country
      t.string :address
      t.text :description
      t.string :website_url
      t.string :contact_url
      t.string :bookings_url
      t.references :user, foreign_key: true
      t.references :airport, foreign_key: true
      t.boolean :surfing
      t.boolean :eco_friendly
      t.boolean :yoga
      t.boolean :sup
      t.boolean :rock_climbing
      t.boolean :day_spa
      t.boolean :cycling
      t.boolean :mountain_biking
      t.boolean :diving
      t.boolean :snorkling
      t.boolean :hiking
      t.boolean :skiing
      t.boolean :snowboarding
      t.boolean :vegan
      t.boolean :vegetarian
      t.boolean :golfing
      t.boolean :gym

      t.timestamps
    end
  end
end
