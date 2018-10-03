class DestinationGeo < ApplicationRecord
    belongs_to :destination
    belongs_to :geo_attribute
end
