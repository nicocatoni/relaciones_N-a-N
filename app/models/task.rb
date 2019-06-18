class Task < ApplicationRecord
    has_many :albums
    has_many :users, through: :albums
end
