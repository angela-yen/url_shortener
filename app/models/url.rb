class Url < ApplicationRecord
  SHORT_URL_LENGTH = 6

  validates :long_url, presence: true
  validates :short_url, presence: true, length: { maximum: 6 }

  before_validation :generate_short_url

  private

    def generate_short_url
      self.short_url ||= Randomizer.random_string(SHORT_URL_LENGTH)
    end

end
