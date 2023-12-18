class Company < ApplicationRecord
    has_many :stock_prices, dependent: :destroy
end
