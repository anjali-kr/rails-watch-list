class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo
  # A list must have a unique name.
  validates :name, uniqueness: true, presence: true

  # When you delete a list, you should delete all associated bookmarks
  # (but not the movies as they can be referenced in other lists).
  # dependent: :destroy
end
