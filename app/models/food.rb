class Food < ApplicationRecord
    has_many :cooks_foods
    has_many :cooks, through: :cooks_foods
    has_one :image, as: :imageable

end
