# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(username: 'shachopin')
post1 = Post.create(title: 'A great company', url: 'oracle.com', description: 'Software and Hardware working together', creator: user1)
Comment.create(body: "I agree", creator: user1, post: post1)
category1 = Category.create(name: "Tech")
PostCategory.create(category: category1, post: post1)

