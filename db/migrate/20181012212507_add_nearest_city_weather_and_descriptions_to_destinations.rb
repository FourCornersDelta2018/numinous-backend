class AddNearestCityWeatherAndDescriptionsToDestinations < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :nearest_city_weather, :string
    add_column :destinations, :description, :string
  end
end
