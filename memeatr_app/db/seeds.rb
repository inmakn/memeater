# Seeding 1 User
# fen = User.create!(avatar: File.open("app/assets/images/finn.jpg"),
#                   username: 'fen',
#                   password: 'querty',
#                   password_confirmation: 'querty',
#                   num_games_played: 0)

# Seeding 3 Characters

finn = Character.create!(name: 'Finn',
                         hp: 15,
                         spritesheet: File.open("app/assets/images/finn_sprite_sheet.png")
                         )

jetpack = Character.create!(name: 'Jetpack Dude',
                         hp: 30,
                         spritesheet: File.open("app/assets/images/jetpack_sprite_sheet.png")
                         )

knight = Character.create!(name: 'Super Knight',
                         hp: 50,
                         spritesheet: File.open("app/assets/images/knight_sprite_sheet.png")
                         )

# Seeding 7 Memes

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

nyan = Meme.create!(name: 'Nyancat',
                    spritesheet: File.open("app/assets/images/nyancat_spritesheet.png"),
                    speed: 30,
                    level: 1)

mudkip = Meme.create!(name: 'Mudkip',
                    spritesheet: File.open("app/assets/images/mudkip_spritesheet.png"),
                    speed: 60,
                    level: 2)

spongebob = Meme.create!(name: 'Spongebob',
                    spritesheet: File.open("app/assets/images/spongebob_spritesheet.png"),
                    speed: 90,
                    level: 3)

# Seeding 3 Environments

# sky_env = Environment.create!(
#                   name: "Sky",
#                   top_layer: File.open("app/assets/images/cloud.png"),
#                   middle_layer: File.open("app/assets/images/full_doge_sprite.png"),
#                   bottom_layer: File.open("app/assets/images/full_doge_sprite.png")
#                  )
#
# space_env = Environment.create!(
#                   name: "Space",
#                   top_layer: File.open("app/assets/images/full_doge_sprite.png"),
#                   middle_layer: File.open("app/assets/images/full_doge_sprite.png"),
#                   bottom_layer: File.open("app/assets/images/full_doge_sprite.png")
#                  )
#
#
# sea_env = Environment.create!(
#                   name: "Seascape",
#                   top_layer: File.open("app/assets/images/full_doge_sprite.png"),
#                   middle_layer: File.open("app/assets/images/full_doge_sprite.png"),
#                   bottom_layer: File.open("app/assets/images/full_doge_sprite.png")
#                  )

# new_game = Game.create(user_id: 1)
