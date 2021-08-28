class UnicentPrice < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '10円売'},
    { id: 3, name: '20円売'},
    { id: 4, name: '30円売'},
    { id: 5, name: '40円売'},
    { id: 6, name: '50円売'},
    { id: 7, name: '60円売'},
    { id: 8, name: '70円売'},
    { id: 9, name: '80円売'},
    { id: 10, name: '90円売'},
    { id: 11, name: '100円売以上'}

  ]

  include ActiveHash::Associations
  has_many :products
end