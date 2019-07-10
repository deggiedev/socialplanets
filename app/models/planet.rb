class Planet < ApplicationRecord
    belongs_to :user 
    has_many :questions, through, :activity
    has_many :activities
end
