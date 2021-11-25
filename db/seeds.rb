# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Tag.create!(
  [
    {
      name: '発酵食品',
      tag_image: File.open('./app/assets/images/tag1.jpeg')
    },
    {
      name: '海藻類',
      tag_image: File.open('./app/assets/images/tag2.png')
    },
    {
      name: '穀物類',
      tag_image: File.open('./app/assets/images/tag3.png')
    },
    {
      name: 'きのこ類',
      tag_image: File.open('./app/assets/images/tag4.jpeg')
    },
    {
      name: '野菜類',
      tag_image: File.open('./app/assets/images/tag5.jpeg')
    },
    {
      name: '簡単レシピ',
      tag_image: File.open('./app/assets/images/tag6.png')
    }
  ]
)
