Article.destroy_all

def fake_content
  paragraphs = []
  paragraphs << Faker::Lorem.paragraph
  paragraphs << "![](http://lorempixel.com/800/300/city/)"
  paragraphs << "## #{Faker::Company.catch_phrase}"
  paragraphs << Faker::Lorem.paragraphs(2)
  paragraphs << "**#{Faker::Lorem.word}** #{Faker::Lorem.sentences.join}"
  paragraphs << "## #{Faker::Company.catch_phrase}"
  paragraphs << "#{Faker::Lorem.sentences.join} [#{Faker::Commerce.product_name}](#{Faker::Internet.url}) #{Faker::Lorem.sentences.join}"
  paragraphs << Faker::Lorem.paragraphs(3)
  paragraphs.flatten.join("\n\n")
end

20.times do
  Article.create(
    title: Faker::Company.catch_phrase,
    content: fake_content
  )
end