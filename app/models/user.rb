class User < ApplicationRecord
    has_many :columns_users
    has_many :columns, through: :columns_users
end
