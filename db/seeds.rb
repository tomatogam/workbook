# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
genres = ["Sports","Game","Music","Art","System","Economy","Culture","Beauty","Healthcare","Relationships","Academic","Life"]
genres.each do |name|
  Genre.create(name: name)
end

categories = ["プログラミング", "ネットワーク", "システムデザイン"]
categories.each do |name|
  Category.create(name: name, genre_id: 5)
end

sub_categories = ["Ruby","Python","PHP","JAVA"]
sub_categories.each do |name|
  SubCategory.create(name: name, category_id: 1)
end