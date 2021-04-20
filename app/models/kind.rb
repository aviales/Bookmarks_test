class Kind < ApplicationRecord
  has_many :bookmark_kinds
  has_many :bookmarks, through: :bookmark_kinds

  validates :title, uniqueness: true

  def to_s
    title
  end
end
