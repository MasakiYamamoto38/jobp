# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@com = Company.new
@com.id = 0
@com.name = '株式会社リブセンス'
@com.memo = 'ほげほげ'
@com.address = '〒141-0021 東京都品川区上大崎２丁目２５−２ 新目黒東急ビル'
@com.lat = '0.00'
@com.lng = '0.00'
@com.zoom = 19
@com.url1 = 'http://www.livesense.co.jp/'
@com.url2 = ''
@com.save
