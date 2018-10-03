class GeoAttribute < ApplicationRecord
    has_many :destinations, :through => :destination_geos
    has_many :destination_geos
end
