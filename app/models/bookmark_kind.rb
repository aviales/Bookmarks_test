class BookmarkKind < ApplicationRecord
  belongs_to :bookmark
  belongs_to :kind
end
