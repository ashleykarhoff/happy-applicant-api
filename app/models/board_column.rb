class BoardColumn < ApplicationRecord
  belongs_to :applicant
  has_many :cards
end
