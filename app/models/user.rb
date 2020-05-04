class User < ApplicationRecord
    has_many :reviews
    has_many :drinks, through: :reviews 
end
