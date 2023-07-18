Artist.destroy_all
Gallery.destroy_all
painting.destroy_all

artist1 = Artist.create(name: "Nick", age: 100, experience: 1000)
artist2 = Artist.create(name: "Manu", age: 20, experience: 900)
artist3 = Artist.create(name: "Irene", age: 50, experience: 800)
artist4 = Artist.create(name: "Dan", age: 120, experience: 500)
artist5 = Artist.create(name: "Tom", age: 100, experience: 50)
artist6 = Artist.create(name: "Andrew", age: 450, experience: 980)
artist7 = Artist.create(name: "John", age: 19, experience: 60)
artist8 = Artist.create(name: "Smith", age: 58, experience: 410)
artist9 = Artist.create(name: "Lewi", age: 78, experience: 339)
artist10 = Artist.create(name: "Esther", age: 69, experience: 169)

gal1 = Gallery.create(name: "Mapicha", location: "Nairobi")
gal2 = Gallery.create(name: "Cosco", location: "Mombasa")
gal3 = Gallery.create(name: "Pillar", location: "Kisumu")
gal4 = Gallery.create(name: "Backspace", location: "Eldoret")
gal5 = Gallery.create(name: "Escape", location: "Nanyuki")
gal6 = Gallery.create(name: "Conrtol", location: "Nakuru")
gal7 = Gallery.create(name: "Asterisk", location: "Meru")
gal8 = Gallery.create(name: "Shift", location: "Nyali")
gal9 = Gallery.create(name: "Capslock", location: "Parklands")
gal10 = Gallery.create(name: "Tab", location: "Kitsuru")

5.times do
    painting.create(name: Faker::Name.name, price: Faker::number.between(from:1000,to:10000), artist_id: Artist.ids.sample, gallery_id: Gallery.ids.sample)
end