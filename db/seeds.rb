# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "hi"

create_account = User.create([email: 'example@gmail.com', password: '12345678', password_confirmation: '12345678', name: '測試用'])

create_groups = 1.upto(20) do |i|
  Group.create!([title: "Group no. #{i}", description: "用seed建立的第#{i}個討論版", user_id: "7"])
  1.upto(30) do |k|
    Post.create!([group_id: "#{i}", content: "用seed建立的第#{k}個留言", user_id: "7"])
  end
end