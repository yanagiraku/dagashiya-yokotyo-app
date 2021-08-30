class Category < ActiveHash::Base
  self.data =[
    { id: 1, name: '---', nickname: '---'},
    { id: 2, name: 'スナック', nickname: 'snack'},
    { id: 3, name: 'チョコレート', nickname: 'chocolate'},
    { id: 4, name: '飴・ラムネ・ガム', nickname: 'candy'},
    { id: 5, name: 'ゼリー・グミ・ドリンク', nickname: 'jello'},
    { id: 6, name: 'パン・米・餅', nickname: 'pan'},
    { id: 7, name: '珍味', nickname: 'delicacy'}
  ]

  include ActiveHash::Associations
  has_many :products

end