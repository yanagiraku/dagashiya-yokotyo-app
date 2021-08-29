class Company < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '家田製菓株式会社'},
    { id: 3, name: '岩本製菓株式会社'},
    { id: 4, name: 'オリオン株式会社'},
    { id: 5, name: 'カバヤ食品株式会社'},
    { id: 6, name: '株式会社おやつカンパニー'},
    { id: 7, name: '株式会社スグル食品'},
    { id: 8, name: '株式会社フジバンビ'},
    { id: 9, name: '株式会社やおきん'},
    { id: 10, name: 'キッコー製菓株式会社'},
    { id: 11, name: '共親製菓株式会社'},
    { id: 12, name: 'クラシエフーズ株式会社'},
    { id: 13, name: 'サンヨー製菓株式会社'},
    { id: 14, name: '丹生堂'},
    { id: 15, name: 'チロルチョコ株式会社'},
    { id: 16, name: 'トップ製菓株式会社'},
    { id: 17, name: '中野物産株式会社'},
    { id: 18, name: 'ママリス株式会社'},
    { id: 19, name: '丸川製菓株式会社'},
    { id: 20, name: '明治チューイングガム株式会社'},
    { id: 21, name: 'よっちゃん食品工業株式会社'}
  ]

  include ActiveHash::Associations
  has_many :products
end