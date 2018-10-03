class Destination < ApplicationRecord
    has_many :destination_geos
    has_many :destination_exps
    has_many :destination_langs
    has_many :destination_users
    has_many :geo_attributes, :through => :destination_geos
    has_many :exp_attributes, :through => :destination_exps
    has_many :lang_attributes, :through => :destination_langs
    has_many :users, :through => :destination_users
end
