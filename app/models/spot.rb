class Spot < ApplicationRecord
  
  validates :name, presence: true
  validates :add, presence: true
  validates :note, presence: true
  validates :image, presence: true
  
  belongs_to :user
  has_many :comments,dependent: :destroy
  has_one_attached :image
end
