require 'faker'

puts 'This seed file will add some of my projects'
puts 'These projects are just for testing, and will get more data after front end works.'


puts 'Deleting all older projects....'

Project.destroy_all

puts 'now adding new projects'

titles = ['Dream-OM', 'Obbis', 'Cocktail Nebula', 'Profile page']
descriptions = ["Im pretty sure you know how difficult and messy is to buy land or to get an architect, Looking to all those filters and possibilities is a headache. But that's why we decided to create Dream-Om, To help you find land and plots without having to click on all those filters that other websites throw at your face. if you decided your land or plot, what about if we present you with the best architects in london?, a totally optional feature let's you choose an architect to really build your dream home!.",
  "Obbis connects people who want to discover that creative passion hidden within, via short classes, with freelance artisans who have honed their skills over decades and not only that Obbis will help you to find those classes in english, perfect for foreigners on Tokyo!.",
  "Cocktail Nebula was created at Le Wagon coding bootcamp and was an exercise to apply all the Rails knownledge: CRUD actions, nested routes and photo uploading. This site will help you to create your favourite cocktail mixes where you can add doses and upload them in the website.",
  "This is just a placeholder for my static page"
]
index_increment = 0

4.times do
  Project.create!(
    title: titles[index_increment],
    description: descriptions[index_increment]
    )
  index_increment += 1
end



puts 'Adding urls to the projects....'

dream = Project.where(title: 'Dream-OM')
dream.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003947/My%20Website%20photos/dream-om_1_zwpmrw.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003945/My%20Website%20photos/dream-om_2_vxlftd.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003945/My%20Website%20photos/dream-om_3_x4yka5.png']
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
