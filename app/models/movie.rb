class Movie < ApplicationRecord
  has_many :bookmarks
  # A movie must have a unique title and an overview
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

  # You can’t delete a movie if it is referenced in at least one bookmark.
end
