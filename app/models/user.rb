class User < ApplicationRecord
    validates :id, uniqueness: true, presence: true
    validates :name, length: { in: 4..20 }, uniqueness: true, presence: true
    validates :email, length: { in: 4..20 }, uniqueness: true, presence: true
    validates :password, length: { in: 6..20 }
    has_many :posts
    has_many :comments
end