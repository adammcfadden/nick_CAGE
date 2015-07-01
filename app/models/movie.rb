class Movie < ActiveRecord::Base
  has_many :reviews

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :release_date, presence: true

  default_scope { order('release_date') }
end
