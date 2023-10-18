require 'faker'

namespace :articles do

  desc 'create articles'
  task articles: :environment do
    p 'Creating articles'
    100000.times do
      Article.create(title: Faker::Lorem.words(number: rand(2..5)).join(' '), description: Faker::Lorem.words(number: rand(5..10)).join(' '), body: Faker::Lorem.paragraphs(number: rand(3..10)).join('\n'))
    end
    p 'Articles created'
  end

  desc 'create data'
  task all: [:environment, 'articles']

end