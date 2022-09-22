class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  has_one_attached :photo

  # validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, :list, presence: true
  validates :movie, uniqueness: { scope: :list }

end
