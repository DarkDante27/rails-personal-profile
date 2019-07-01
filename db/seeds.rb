require 'faker'

puts 'This seed file will add some of my projects'
puts 'These projects are just for testing, and will get more data after front end works.'


puts 'Deleting all older projects....'

Project.destroy_all

puts 'now adding new projects'

titles = ['Dream-OM', 'Obbis', 'Cocktail Nebula']
descriptions = ["Im pretty sure you know how difficult and messy is to buy land or to get an architect, Looking to all those filters and possibilities is a headache. But that's why we decided to create Dream-Om, To help you find land and plots without having to click on all those filters that other websites throw at your face. if you decided your land or plot, what about if we present you with the best architects in london?, a totally optional feature let's you choose an architect to really build your dream home!.",
  "Obbis connects people who want to discover that creative passion hidden within, via short classes, with freelance artisans who have honed their skills over decades and not only that Obbis will help you to find those classes in english, perfect for foreigners on Tokyo!.",
  "Cocktail Nebula was created at Le Wagon coding bootcamp and was an exercise to apply all the Rails knownledge: CRUD actions, nested routes and photo uploading. This site will help you to create your favourite cocktail mixes where you can add doses and upload them in the website."
]

short_descriptions = ["Dream-om will help you find Plots, houses and architects easy and fast without useless filters and most important, without wasting your time 😉",
  "Find your hidden passion! with Obbis you can search english speaking classes in Tokyo.",
  "Create, Mix, Share your favorite cocktails with Cocktail Nebula."]

index_increment = 0

3.times do
  Project.create!(
    title: titles[index_increment],
    description: descriptions[index_increment],
    short_description: short_descriptions[index_increment]
    )
  index_increment += 1
end



puts 'Adding urls to the projects....'

dream = Project.where(title: 'Dream-OM')
dream.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003947/My%20Website%20photos/dream-om_1_zwpmrw.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003945/My%20Website%20photos/dream-om_2_vxlftd.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003945/My%20Website%20photos/dream-om_3_x4yka5.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963790/My%20Website%20photos/dream-om_4_skoouz.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963772/My%20Website%20photos/dream-om_5_hcpebc.png','https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963818/My%20Website%20photos/dream-om_6_t6skpy.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963789/My%20Website%20photos/dream-om_7_yl4yej.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963769/My%20Website%20photos/dream-om_8_rhjrio.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963769/My%20Website%20photos/dream-om_9_cf4m5e.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963772/My%20Website%20photos/dream-om_10_mtkden.png']
dream.first.dev_description = "The project deadline was of 2 Weeks, I was in charge of getting real data from API files and injecting seeds on the site, as well as some logic across all the site, Personalized the markers on the maps, added photos to the plots, More button on the plots list, maintained database, and Some JavaScript for the Front End of the site."
dream.first.save

obbis = Project.where(title: 'Obbis')
obbis.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003946/My%20Website%20photos/obbis_v7xruy.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965040/My%20Website%20photos/obbis_2_r0nbmh.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965039/My%20Website%20photos/obbis_3_rzmvue.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965003/My%20Website%20photos/obbis_4_ypcqxy.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965005/My%20Website%20photos/obbis_5_emqhqw.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965018/My%20Website%20photos/obbis_6_cfuzab.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965011/My%20Website%20photos/obbis_7_edyosa.png']
obbis.first.dev_description = "The project deadline was of 1 Week, In Obbis I was in charge of creating real seeds and adding all pictures and descriptions for the site's classes, added some logic behind forms and and photo uploading and handled database."
obbis.first.save

cocktail = Project.where(title: 'Cocktail Nebula')
cocktail.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003945/My%20Website%20photos/cocktail_fkgmi2.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965912/My%20Website%20photos/cocktail_2_jow03j.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965916/My%20Website%20photos/cocktail_3_yuka6g.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965912/My%20Website%20photos/cocktail_4_a0ti3p.png']
cocktail.first.dev_description = "This Project was created in 3 days, I was the Project Manager, Part of Le Wagon exercises to implement Photo uploading with Cloudinary also made use of the rails CRUD actions."
cocktail.first.save

puts 'Finished!'
