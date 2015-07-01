class Review < ActiveRecord::Base
  belongs_to :movie
  has_one :rating

  validates :body, presence: true
end
