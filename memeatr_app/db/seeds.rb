# Seeding 1 User
fen = User.create!(avatar: File.open("app/assets/images/finn.jpg"),
                  username: 'fen',
                  password: 'querty',
                  password_confirmation: 'querty',
                  num_games_played: 0)

# Seeding 3 Characters

finn = Character.create!(name: 'Wilhelm',
                         hp: 15,
                         spritesheet: File.open("app/assets/images/finn_sprite_sheet.png")
                         )

# jetpack = Character.create!(name: 'Jetpack Dude',
#                          hp: 30,
#                          spritesheet: )

knight = Character.create!(name: 'Super Knight',
                         hp: 50,
                         spritesheet: File.open("app/assets/images/knight_sprite_sheet.png")
                         )

# Seeding 3 Memes

doge = Meme.create!(name: 'Doge',
                    spritesheet: File.open("app/assets/images/doge_sprite.png"),
                    speed: 30,
                    level: 1)

ceiling_cat = Meme.create!(name: 'Ceiling Cat',
                    spritesheet: File.open("app/assets/images/ceilingcat_spritesheet.png"),
                    speed: 60,
                    level: 2)

rent = Meme.create!(name: 'Rent Is Too Damn High Guy',
                    spritesheet: File.open("app/assets/images/too_damn_high_spritesheet.png"),
                    speed: 90,
                    level: 3)

rent = Meme.create!(name: 'Nyan Cat',
                    spritesheet: File.open("app/assets/images/nyancat_spritesheet.png"),
                    speed: 90,
                    level: 3)

# level_one = Environment.create(
#                   name: "Sky",
#                   top_layer: File.open("app/assets/images/cloud.png"),
#                   middle_layer: File.open("app/assets/images/full_doge_sprite.png"),
#                   bottom_layer: File.open("app/assets/images/full_doge_sprite.png")
#                  )
#
# level_two = Environment.create(
#                   name: "Space",
#                   top_layer: File.open("app/assets/images/full_doge_sprite.png"),
#                   middle_layer: File.open("app/assets/images/full_doge_sprite.png"),
#                   bottom_layer: File.open("app/assets/images/full_doge_sprite.png")
#                  )

# new_game = Game.create(user_id: 1)
