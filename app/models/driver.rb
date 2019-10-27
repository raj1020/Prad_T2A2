class Driver < ApplicationRecord
    enum vehicle: {car: 1, scooter: 2, bicycle: 3}
end
