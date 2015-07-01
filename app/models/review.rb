class Review < ActiveRecord::Base
  belongs_to :movie
  
  validates :body, presence: true
  validates :rating, presence: true
end
