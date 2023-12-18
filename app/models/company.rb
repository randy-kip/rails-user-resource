class Company < ApplicationRecord
    RISK_FACTORS = [
        "LOW",
        "MEDIUM",
        "HIGH"
    ]

    has_many :stock_prices, dependent: :destroy

    validates :name, presence: true, uniqueness: true
    validates :ticker_symbol, presence: true, uniqueness: true
    validates :risk_factor, presence: true, inclusion: { in: RISK_FACTORS }

    validate :validate_length_of_ticker_symbol

    before_save :capitalize_ticker_symbol

    private 

    def validate_length_of_ticker_symbol
        if self.ticker_symbol.present?
            if self.ticker_symbol.size < 2 or self.ticker_symbol.size > 4
                self.errors.add(:ticker_symbol, "Length should be at least 2 and at most 4 in length.")
            end
        end
    end

    def capitalize_ticker_symbol
        self.ticker_symbol = self.ticker_symbol.upcase
    end
end
