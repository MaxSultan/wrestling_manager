class Event < ApplicationRecord
  belongs_to :team
  has_many :event_items, dependent: :destroy

  scope :current_season, -> (start_date, end_date) { 
    where(date: start_date..end_date)
  }
end
