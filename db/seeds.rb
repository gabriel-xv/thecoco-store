require "open-uri"

puts "Destroying the data"
Doll.destroy_all
User.destroy_all
puts "Creating new ones"

user_1 = User.create!(
  email: "coco@gmail.com",
  password: '123456',
  admin: true
  )

doll_1 = Doll.new(
  name: 'Brigitta Cute',
  description: 'I am not an impostor',
  price_cents: 36,
  adopted: false,
  user_id: user_1.id
  )
file = URI.open('https://res.cloudinary.com/drd5lqxx9/image/upload/v1605805915/7sb09dfrcfid337wob8w249zot4c.png')
doll_1.photo.attach(io: file, filename: 'tmnt.jpg', content_type: 'image/jpg')
doll_1.save!
