class Column < ApplicationRecord
    has_many :columns_users
    belongs_to :user, through: :columns_users
end
