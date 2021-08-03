class Comment < ApplicationRecord
 
  validates :user, presence: true
  validates :spot, presence: true
  validates :text, presence: true

  belongs_to :user, optional: true
  belongs_to :spot, optional: true

end

