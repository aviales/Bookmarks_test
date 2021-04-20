# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#crear registros de kind
20.times do |i|
    title = Faker::Commerce.department + (i + 1).to_s
    Kind.create!(title: title)
end

#creaer registros de categories
30.times do |i|
    title = Faker::Cannabis.type + (i + 1).to_s
    is_public = [true, false].sample
    Seed = Category.create!(title: title, is_public: is_public)
    5.times do |j|
        title = Faker::Cannabis.type + (j + 1).to_s
        is_public = [true, false].sample
        category_id = Seed.id
        Category.create!(title: title, is_public: is_public, category_id: category_id)
    end
end

#crear registros de bookmarks
categories = Category.all
kinds = Kind.all

30.times do |i|
    title = Faker::Music.album + (i + 1).to_s
    url = Faker::Internet.url
    Bookmark.create!(title: title, url: url)
end

Bookmark.all.each do |b|
    3.times do
        BookmarkCategory.create!(bookmark: b, category: categories.sample)
        BookmarkKind.create!(bookmark: b, kind: kinds.sample)
    end
end
