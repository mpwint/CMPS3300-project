# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all

some_users = Array.new

majors = ['Biology', 'Chemistry', 'Environmental Science', 'Marine Science', 'Dance', 'Theatre', 'English', 'History', 'Philosophy', 'Political Science', 'Psychology', 'Sociology']

20.times do |index|
  some_users.push(:name => Faker::Name.name)
end

some_users.each do |user|
  User.create!([{
    :name => user[:name].to_s,
    :password => user[:name].to_s.downcase.gsub(/[^a-z0-9]/i, ''),
    :email => user[:name].to_s.downcase.gsub(/[^a-z0-9]/i, '') + '@tulane.edu',
    :major => majors[rand(0..majors.length)]
  }])
end


20.times do |index|
  Post.create!([{
    :user_id => index+1,
    :poster_email => User.find(index+1).email,
    :description => Faker::Quote.famous_last_words
  }])
end