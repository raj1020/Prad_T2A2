class CooksFood < ApplicationRecord
  belongs_to :cook
  belongs_to :food
end
