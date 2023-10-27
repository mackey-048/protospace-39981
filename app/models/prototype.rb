class Prototype < ApplicationRecord
  validates :image, :title, :catch_copy, :concept, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
end
