class LangAttribute < ApplicationRecord
    has_many :destinations, :through => :destination_langs
    has_many :destination_langs
end
