# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ewok_attributes = [
      {
        id: 1,
        name: 'Morris',
        age: 2,
        enjoys: "Long walks on the beach.",
        img: "https://vignette.wikia.nocookie.net/starwars/images/9/95/Deej.jpg"
      },
      {
        id: 2,
        name: 'Paws',
        age: 4,
        enjoys: "Snuggling by the fire.",
        img: "https://lumiere-a.akamaihd.net/v1/images/file_8557f1b4.jpeg"
      },
      {
        id: 3,
        name: 'Mr. Meowsalot',
        age: 12,                                                  
        enjoys: "Being in charge.",
        img: "https://content.propstore.com/auction/la2015/lots/lot416starwarsreturnofthejedi1983fawncolouredewokhead/img2.jpg"
      },
      {
        id: 4,
        name: 'Nub Nub',
        age: 15,
        enjoys:"Setting traps for the imperial troopers",
        img: "https://i.etsystatic.com/11082453/c/1440/1143/0/181/il/0ca442/1280578317/il_340x270.1280578317_b488.jpg"
      }
    ]
    
    ewok_attributes.each do |attributes|
  Ewok.create(attributes)
end
    