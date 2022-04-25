class Post < ApplicationRecord
    validates :title, length: { maximum: 50 }, presence: true
    validates :body, length: { minimum: 10 }, presence: true
    validates :user_id, presence: true
    belongs_to :user
    has_many :comments
end