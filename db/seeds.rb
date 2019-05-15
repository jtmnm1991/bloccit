require 'random_data'

50.times do
    Post.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
    )
end

posts = Post.all

100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

Post.find_or_create_by(title:"The Title of Titles", body:"A Body of Bodies")

Comment.find_or_create_by(post: posts.first, body:"The Unique of the Unique")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"