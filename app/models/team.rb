class Team < ApplicationRecord
    has_many :users, dependent: :nullify
    has_many :events, dependent: :destroy
end
