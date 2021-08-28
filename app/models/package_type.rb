class PackageType < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '個包装'},
    { id: 3, name: '袋包装'},
    { id: 4, name: '箱'},
    { id: 5, name: 'ボトル'},
    { id: 6, name: 'カップ'},
    { id: 7, name: 'ポット'},
    { id: 8, name: 'ケース'},

  ]

  include ActiveHash::Associations
  has_many :products
end