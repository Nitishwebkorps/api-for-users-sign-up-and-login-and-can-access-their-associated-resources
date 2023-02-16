class SecretMenuItem < ApplicationRecord
    has_many :customers
    belongs_to :user
end
