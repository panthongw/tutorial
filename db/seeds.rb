# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  @post =Post.new(title: Forgery(:currency).description, content: Forgery(:lorem_ipsum).paragraphs(Random.rand(3..5)))
  @post.save
end