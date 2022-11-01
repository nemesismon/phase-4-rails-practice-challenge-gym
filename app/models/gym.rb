class Gym < ApplicationRecord
    has_many :memberships, dependent: :delete_all
    has_many :clients, through: :memberships
end
