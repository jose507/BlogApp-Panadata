class Article < ApplicationRecord
    belongs_to :user
    validates :user_id, presence: true
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
                      length: { minimum: 5 }
  end