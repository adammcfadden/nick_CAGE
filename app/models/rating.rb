class Rating < ActiveRecord::Base
  belongs_to :movie
  belongs_to :review

  validates :rating, presence: true
end
