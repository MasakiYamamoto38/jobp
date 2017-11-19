# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#志望職種

coms = [
  {
    name: '株式会社リブセンス',
    memo: 'ほげほげ',
    address: '〒141-0021 東京都品川区上大崎２丁目２５−２ 新目黒東急ビル',
    lat: 0.00,
    lng: 0.00,
    zoom: 19,
    url1: 'http://www.livesense.co.jp/',
    url2: ''
  },
  {
    name: 'freee株式会社',
    memo: 'ほげほげ2',
    address: '〒141-0031　東京都品川区西五反田2-8-1 五反田ファーストビル 9F',
    lat: 0.00,
    lng: 0.00,
    zoom: 19,
    url1: 'https://corp.freee.co.jp',
    url2: ''
  }
]

coms.each do |c|
  @com =
    Company.create!(name: c[:name], memo: c[:memo], address: c[:address],lat: c[:lat], lng: c[:lng], zoom: c[:zoom], url1: c[:url1], url2: c[:url2])
end
