# Seeding 1 User
fen = User.create!(username: 'fen',
                  password: 'fen',
                  password_confirmation: 'fen',
                  high_score: 0)

sean = User.create!(username: 'sean',
                  password: 'sean',
                  password_confirmation: 'sean',
                  high_score: 0)

albert = User.create!(username: 'albert',
                  password: 'albert',
                  password_confirmation: 'albert',
                  high_score: 0)

# Seeding 3 Characters

finn = Character.create!(name: 'Finn The Human',
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

# Seeding 3 Memes

doge = Meme.create!(name: 'Doge',
                    spritesheet: File.open("app/assets/images/doge_sprite.png"),
                    speed: 30,
                    level: 1)

ceiling_cat = Meme.create!(name: 'Ceiling Cat',
                    spritesheet: File.open("app/assets/images/ceilingcat_spritesheet.png"),
                    speed: 60,
                    level: 1)

rent = Meme.create!(name: 'Rent Is Too Damn High Guy',
                    spritesheet: File.open("app/assets/images/too_damn_high_spritesheet.png"),
                    speed: 90,
                    level: 1)

nyan = Meme.create!(name: 'Nyan Cat',
                    spritesheet: File.open("app/assets/images/nyancat_spritesheet.png"),
                    speed: 90,
                    level: 1)

mudkip = Meme.create!(name: 'Mudkip',
                    spritesheet: File.open("app/assets/images/mudkip_spritesheet.png"),
                    speed: 90,
                    level: 1)

# Seeding 3 Environments


level_one = Environment.create!(
                  name: "Sky",
                  top_layer: File.open("app/assets/images/smaller_green_bird.png"),
                  middle_layer: File.open("app/assets/images/smaller_cloud.png"),
                  bottom_layer: File.open("app/assets/images/blue_background.png")
                 )

level_two = Environment.create(
                  name: "Space",
                  top_layer: File.open("app/assets/images/star.png"),
                  middle_layer: File.open("app/assets/images/small_star.png"),
                  bottom_layer: File.open("app/assets/images/space_background.png")
                 )

level_three = Environment.create(
                  name: "Underwater",
                  top_layer: File.open("app/assets/images/small_piranha.png"),
                  middle_layer: File.open("app/assets/images/small_patrick.png"),
                  bottom_layer: File.open("app/assets/images/bubbles.png")
                 )

level_cash = Environment.create(
                  name: "Dollars In The Wind",
                  top_layer: File.open("app/assets/images/adam_transparent.png"),
                  middle_layer: File.open("app/assets/images/hari_transparent.png"),
                  bottom_layer: File.open("app/assets/images/balloons.png")
                 )
