require 'faker'

p 'Cleaning the database'
Article.destor_all

p 'Creating 10 fake articles'
10.times do
  article = Article.new(
    title: Faker::Movie.title,
    content: Faker::Movie.quote
  )
  article.save!
end
p 'Articles have been created'
