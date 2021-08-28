class Flavour < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '甘い'},
    { id: 3, name: 'しょっぱい'},
    { id: 4, name: '甘じょっぱい'},
    { id: 5, name: '酸っぱい'},
    { id: 6, name: '辛い'},
    { id: 7, name: '甘辛'}
  ]

  include ActiveHash::Associations
  has_many :products
end