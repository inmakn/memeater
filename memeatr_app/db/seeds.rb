# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



fen = User.create(username: 'fen',
                  photo_url: 'http://www.mondayeveningconcerts.org/images/bios/ustvolskaya.jpg',
                  password: 'querty',
                  password_confirmation: 'querty')


finn = Character.create(name: 'Finn The Human',
                  image_url: 'http://img1.wikia.nocookie.net/__cb20131128031157/adventuretimewithfinnandjake/images/b/b0/Finn_with_five_fingers.png',
                  hp: 100)


level_one = Environment.create(name: "Level One",
                  top_layer: "http://www.freestockphotos.biz/pictures/15/15146/Illustration+of+a+stormy+cloud.png",
                  mid_layer: "http://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Clouds_(transparent).png/800px-Clouds_(transparent).png",
                  bottom_layer: "http://www.torange.us/photo/20/13/Clear-sky-1363594685_18.jpg")


doge = Meme.create(image_url: "http://a.deviantart.net/avatars/r/a/rainbow-stitching.gif?7",
                   speed: 20,
                   level: 1,
                   name: "Doge",
                   link_url: "http://knowyourmeme.com/memes/doge")

new_game = Game.create(user_id: 1)
