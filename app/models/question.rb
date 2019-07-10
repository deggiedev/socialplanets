class Question < ApplicationRecord
    has_many :planets, through, :activity
    belongs_to :activity
end
