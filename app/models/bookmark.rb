class Bookmark < ApplicationRecord
 belongs_to :lists
 belongs_to :movies
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already on the list"}

end
