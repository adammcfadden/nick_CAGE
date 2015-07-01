class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :ratings

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :release_date, presence: true

  default_scope { order('release_date') }

  def avg_rating
    rating_sum = 0
    ratings.each do |rating|
      rating_sum += rating.rating
    end
    (rating_sum.to_f / ratings.length.to_f).round(2)
  end
end
