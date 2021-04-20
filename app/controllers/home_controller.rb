class HomeController < ApplicationController
  def index
    @bookmarks = Bookmark.joins(:categories).group("categories.title").count
  end
end
