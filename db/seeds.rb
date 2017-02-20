# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

auditorium_1 = Auditorium.create(capacity: 100)
auditorium_2 = Auditorium.create(capacity: 50)
auditorium_3 = Auditorium.create(capacity: 88)
auditorium_4 = Auditorium.create(capacity: 75)
auditorium_5 = Auditorium.create(capacity: 60)

show_1 = Show.create(title: 'Citizen Kane',  description: "In a mansion in Xanadu, a vast palatial estate in Florida, the elderly Charles Foster Kane is on his deathbed. Holding a snow globe, he utters a word, 'Rosebud', and dies; the globe slips from his hand and smashes on the floor. A newsreel obituary tells the life story of Kane, an enormously wealthy newspaper publisher. Kane's death becomes sensational news around the world, and the newsreel's producer tasks reporter Jerry Thompson with discovering the meaning of 'Rosebud'.", image_url:'http://www.filmsite.org/posters/citi1.gif', runtime:119)

show_2 = Show.create(title: 'Casablanca',  description: "In December 1941, American expatriate Rick Blaine is the proprietor of an upscale nightclub and gambling den in Casablanca. 'Rick's Café Américain' attracts a varied clientele: Vichy French and German officials; refugees desperate to reach the still-neutral United States; and those who prey on them.", image_url:'http://www.filmsite.org/posters/casa7.jpg', runtime:102)

show_3 = Show.create(title: 'The Godfather',  description: "In 1945, at his daughter Connie's wedding, Vito Corleone hears requests in his role as the Godfather, the Don of a New York crime family. Vito's youngest son, Michael, who was a Marine during World War II, introduces his girlfriend, Kay Adams, to his family at the reception.", image_url:'http://www.filmsite.org/posters/godf.jpg', runtime:178)

show_4 = Show.create(title: 'Sunset Boulevard',  description: "At a Sunset Boulevard mansion, the body of Joe Gillis floats in the swimming pool. In a flashback, Joe relates the events leading to his death.", image_url:'http://www.filmsite.org/posters/suns.jpg', runtime:115)

showtime_6 = Showtime.create(auditorium_id: auditorium_1.id, show_id: show_1.id, min_after_midnight: 1415)
showtime_7 = Showtime.create(auditorium_id: auditorium_2.id, show_id: show_2.id, min_after_midnight: 1400)
showtime_8 = Showtime.create(auditorium_id: auditorium_3.id, show_id: show_3.id, min_after_midnight: 1430)
showtime_9 = Showtime.create(auditorium_id: auditorium_4.id, show_id: show_4.id, min_after_midnight: 1445)
showtime_1 = Showtime.create(auditorium_id: auditorium_1.id, show_id: show_1.id, min_after_midnight: 1215)
showtime_2 = Showtime.create(auditorium_id: auditorium_2.id, show_id: show_2.id, min_after_midnight: 1200)
showtime_3 = Showtime.create(auditorium_id: auditorium_3.id, show_id: show_3.id, min_after_midnight: 1330)
showtime_4 = Showtime.create(auditorium_id: auditorium_4.id, show_id: show_4.id, min_after_midnight: 1245)
admin = Admin.create(username: 'admin',password:'password')
