# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

######## 1 ############
@a = Article.create(
    title: 'Tom',
    description: 'El gato mas famoso de la television'
)
@a.photo.attach(
    io:  File.open(File.join(Rails.root,'app/assets/images/tom.png')),
    filename: 'tom.png'
)


######### 2 ###########
@a = Article.create(
    title: ' Gatos cientificos',
    description: 'Almorzaron sus mascotas de laboratorio.'
)
@a.photo.attach(
    io:  File.open(File.join(Rails.root,'app/assets/images/cientificos.jpg')),
    filename: 'cientificos.jpg'
)


######### 3 ###########
@a = Article.create(
    title: ' Bad Cat ',
    description: 'Gatos Pandilleros aterran la ciudad con su violencia.'
)
@a.photo.attach(
    io:  File.open(File.join(Rails.root,'app/assets/images/pandilleros.jpg')),
    filename: 'pandilleros.jpg'
)

######### 4 ###########
@a = Article.create(
    title: ' Azrael, el anti-heroe.',
    description: 'Gato cazador de Pitufos en entrevista exclusiva.'
)
@a.photo.attach(
    io:  File.open(File.join(Rails.root,'app/assets/images/Azrael.jpg')),
    filename: 'Azrael.jpg'
)

######### 5 ###########
@a = Article.create(
    title: 'Don Gato',
    description: 'La pandilla de gatos que controla los basureros del callejon.'
)
@a.photo.attach(
    io:  File.open(File.join(Rails.root,'app/assets/images/dongatopandilla.jpg')),
    filename: 'dongatopandilla.jpg'
)