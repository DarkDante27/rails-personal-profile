require 'faker'

puts 'This seed file will add some of my projects'
puts 'These projects are just for testing, and will get more data after front end works.'


puts 'Deleting all older projects....'

Project.destroy_all

puts 'now adding new projects'

titles = ['Dream-OM', 'Obbis', 'Cocktail Nebula', 'Profile page']
index_increment = 0

4.times do
  Project.create!(
    title: titles[index_increment],
    description: Faker::Lorem.paragraphs
    )
  index_increment += 1
end

puts 'Adding urls to the projects....'

dream = Project.where(title: 'Dream-OM')
dream.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003947/My%20Website%20photos/dream-om_1_zwpmrw.png', 'ttps://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003945/My%20Website%20photos/dream-om_2_vxlftd.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003945/My%20Website%20photos/dream-om_3_x4yka5.png']
dream.first.save
obbis = Project.where(title: 'Obbis')
obbis.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003946/My%20Website%20photos/obbis_v7xruy.png']
obbis.first.save
cocktail = Project.where(title: 'Cocktail Nebula')
cocktail.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003945/My%20Website%20photos/cocktail_fkgmi2.png']
cocktail.first.save
profile = Project.where(title: 'Profile page')
profile.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,w_640/v1561003945/My%20Website%20photos/html_profile_wxzulh.png']
profile.first.save

puts 'Finished!'
