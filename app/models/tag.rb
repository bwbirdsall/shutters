class Tag < ActiveRecord::Base
  belongs_to :photo
  belongs_to :user
  validates :user_id, presence: true
end
