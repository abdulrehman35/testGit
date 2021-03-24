# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times.each do |index|
	Product.create(name: "Product #{index+1}", description: "Desc #{index+1}")
	article = Article.create(title: "Article #{index+1}", body: 'lorem ipsum')
	Comment.create(commenter: 'abc', body: 'xyz', article: article)
end


