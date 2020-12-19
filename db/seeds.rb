require "open-uri"

puts "Destroying the data"
Doll.destroy_all #if Rails.env.development?
User.destroy_all #if Rails.env.development?
puts "Creating new ones"

user_1 = User.create!(
  email: "coco@gmail.com",
  password: '123456',
  admin: true
  )

doll_1 = Doll.new(
  name: 'Brigitta Cute',
  description: 'I am not an impostor',
  price_cents: 8936,
  adopted: false,
  sku: 'evil-brigitta',
  user_id: user_1.id
  )
file = URI.open('https://res.cloudinary.com/drd5lqxx9/image/upload/v1608290780/Captura_de_pantalla_2020-12-18_a_las_12.26.00_l1sype.png')
doll_1.photo.attach(io: file, filename: 'tmnt.jpg', content_type: 'image/jpg')
doll_1.save!
