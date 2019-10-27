# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

some_users = Array.new

1000.times do |index|
  some_users.push(:user_id => index+1, :name => Faker::Name.name)
end

some_users.each do |user|
  User.create!([{
    :name => user[:name].to_s,
    :email => user[:name].to_s.downcase.gsub(/[^a-z0-9]/i, '') + '@tulane.edu',
    :major => 'CS'
  }])
end

Post.destroy_all

some_users.each do |user|
  Post.create!([{
    :user_id => user[:user_id],
    :poster_email => user[:name].to_s.downcase.gsub(/[^a-z0-9]/i, '') + '@tulane.edu',
    :description => Faker::Quote.famous_last_words,
  }])
end