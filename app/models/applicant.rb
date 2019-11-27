class Applicant < ApplicationRecord
    has_many :board_columns
    has_many :cards, through: :board_columns
end
