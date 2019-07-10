class Activity < ApplicationRecord
    has_many :planets
    belongs_to :question
end
