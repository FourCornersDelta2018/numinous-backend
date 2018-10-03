class ExpAttribute < ApplicationRecord
    has_many :destinations, :through => :destination_exps
    has_many :destination_exps
end
