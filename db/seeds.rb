Article.destroy_all

10.times do
  Article.create(
    title: Faker::Company.catch_phrase,
    content: Faker::Lorem.paragraphs(4, true).join("\n\n")
  )
end