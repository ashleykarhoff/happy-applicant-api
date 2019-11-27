class Columns_Users < ApplicationRecord
    belongs_to :user 
    belongs_to :column
end