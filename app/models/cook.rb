class Cook < ApplicationRecord
    has_many :cooks_foods
    has_many :foods, through: :cooks_foods
    has_one :image, as: :imageable
end
