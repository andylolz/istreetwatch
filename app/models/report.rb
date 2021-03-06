class Report < ApplicationRecord
  validates :description, :time, :town, presence: true

  class << self
    def latest
      where(approved: true).
      where.not(lat: nil).
      order('time desc').
      limit(200)
    end
  end
end
