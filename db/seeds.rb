puts 'This seed file will add some of my projects'
puts 'These projects are just for testing, and will get more data after front end works.'


puts 'Deleting all older projects....'

Project.destroy_all

puts 'now adding new projects'

titles = ['Dream-Om', 'Obbis', 'Cocktail Nebula', 'Hashable', 'Planet Gaze AR - Coming Soon!']
descriptions = ["Im pretty sure you know how difficult and messy is to buy land or to get an architect, Looking to all those filters and possibilities is a headache. That's why we decided to create Dream-Om, to help you find land and plots without having to filter thousands of results that other websites just throw at your screen. And if you already chose land or a house, what about if we present you with the best architects in London? An optional feature lets you choose an architect to really help you build your dream home!.",
  "Obbis connects people who want to discover that creative passion hidden within, via short classes, with freelance artisans who have honed their skills over decades and not only that Obbis will help you to find those classes in english, perfect for foreigners on Tokyo!.",
  "Cocktail Nebula was created at Le Wagon coding bootcamp and was an exercise to apply all the Rails knowledge: CRUD actions, nested routes and photo uploading. This site will help you to create your favorite cocktail mixes where you can add doses and upload them in the website.",
  "Do you like twitter?, do you like to share your thoughts? if both answers are affirmative then you would love to try hashable! the place where you can share your opinions and read others too!",
  "Planet Gaze AR is being made for people who is curious about Space Exploration. Do you feel like you want to know more about the planets in our solar System? do you find exoplanets fascinating?, if your answers are: yes, you need Planet gaze AR! the web app that will let you see official 3D representations of planets and exoplanets in AR. More information and screenshots coming soon!"
]

short_descriptions = ["Dream-om will help you find Plots, houses and architects easy and fast without useless filters and most important, without wasting your time 😉",
  "Find your hidden passion! with Obbis you can search english speaking classes in Tokyo.",
  "'A penny for your thoughts', that's what people say in Hashable, Find out what the world is talking about!"
  "Create, Mix, Share your favorite cocktails with Cocktail Nebula.", "This page will be updated soon! Please remember to come back for more information."]

urls = ["https://dream-om-2.herokuapp.com/", "https://craft-workshops.herokuapp.com/", "https://cocktail-nebula.herokuapp.com/", "https://github.com/paulorivera27/hashable", ""]

index_increment = 0

5.times do
  Project.create!(
    title: titles[index_increment],
    description: descriptions[index_increment],
    short_description: short_descriptions[index_increment],
    url: urls[index_increment]
    )
  index_increment += 1
end



puts 'Adding urls to the projects....'

dream = Project.where(title: 'Dream-Om')
dream.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003947/My%20Website%20photos/dream-om_1_zwpmrw.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003945/My%20Website%20photos/dream-om_2_vxlftd.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003945/My%20Website%20photos/dream-om_3_x4yka5.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963790/My%20Website%20photos/dream-om_4_skoouz.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963772/My%20Website%20photos/dream-om_5_hcpebc.png','https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963818/My%20Website%20photos/dream-om_6_t6skpy.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963789/My%20Website%20photos/dream-om_7_yl4yej.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963769/My%20Website%20photos/dream-om_8_rhjrio.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963769/My%20Website%20photos/dream-om_9_cf4m5e.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561963772/My%20Website%20photos/dream-om_10_mtkden.png']
dream.first.dev_description = "The project deadline was of 2 Weeks, I was in charge of getting real data from API's, JSON files and injecting that data into the database, as well as some logic across all the site, Personalized the markers on the maps, added photos to the plots, More button on the plots list, maintained database, and Some JavaScript for the Front End of the site. This Site was developed with Ruby on Rails, next are some of the gems used: select2, pragmatic segmenter, devise, pundit, simple form, uglyfier, carrierwave, webpacker, cloudinary and geocoder, maps powered by mapbox"
dream.first.save

obbis = Project.where(title: 'Obbis')
obbis.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003946/My%20Website%20photos/obbis_v7xruy.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965040/My%20Website%20photos/obbis_2_r0nbmh.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965039/My%20Website%20photos/obbis_3_rzmvue.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965003/My%20Website%20photos/obbis_4_ypcqxy.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965005/My%20Website%20photos/obbis_5_emqhqw.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965018/My%20Website%20photos/obbis_6_cfuzab.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965011/My%20Website%20photos/obbis_7_edyosa.png']
obbis.first.dev_description = "The project deadline was of 1 Week, In Obbis I was in charge of creating real seeds and adding all pictures and descriptions for the site's classes, added some logic behind forms and and photo uploading and handled database. This Site was developed with Ruby on Rails, here are of the gems used: redis, webpacker, devise, pundit, simple form, uglyfier, carrierwave, autoprefixer-rails, cloudinary and geocoder, maps powered by mapbox"
obbis.first.save

cocktail = Project.where(title: 'Cocktail Nebula')
cocktail.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561003945/My%20Website%20photos/cocktail_fkgmi2.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965912/My%20Website%20photos/cocktail_2_jow03j.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965916/My%20Website%20photos/cocktail_3_yuka6g.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1561965912/My%20Website%20photos/cocktail_4_a0ti3p.png']
cocktail.first.dev_description = "This Project was created in 3 days, I was the Project Manager, Part of Le Wagon exercises to implement Photo uploading with Cloudinary also made use of the rails CRUD actions. This Site was developed with Ruby on Rails, gems used: redis, webpacker, simple form, uglyfier, carrierwave, autoprefixer-rail, cloudinary"
cocktail.first.save

hash = Project.where(title: 'Hashable')
hash.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1582976356/My%20Website%20photos/hasher_01_klw5nq.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1582976293/My%20Website%20photos/hasher_02_lfb3mi.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1582976290/My%20Website%20photos/hasher_03_wtx6ep.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1582976290/My%20Website%20photos/hasher_04_jixgui.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1582976296/My%20Website%20photos/hasher_05_qalgno.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1582976329/My%20Website%20photos/hasher_06_n0g8dv.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1582976302/My%20Website%20photos/hasher_07_yqhbh4.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1582976312/My%20Website%20photos/hasher_08_qi3gz7.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1582976312/My%20Website%20photos/hasher_09_jkqw83.png', 'https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1582976349/My%20Website%20photos/hasher_10_bjfei2.png']
hash.first.dev_description = "Running in local and Making use of Google's GMAIL SMTP Server, and Image upload powered by Cloudinary you can create your user, upload images, make miniposts, you can even seed users (AI created profile pages had been used in this project taken from 'notarealhuman.com') and follow them!. Please go to the Github repo and follow the read me file to easily build the app"
hash.first.save

planet = Project.where(title: 'Planet Gaze AR - Coming Soon!')
planet.first.photos = ['https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1564461563/My%20Website%20photos/Saturn_irldib.png','https://res.cloudinary.com/dduochwyb/image/upload/c_mpad,h_480,q_100,w_640/v1564461617/My%20Website%20photos/Saturn-logo_uqmeo1.gif']
planet.first.dev_description = "Working project, More information Coming soon!"
planet.first.save

puts 'Finished!'
