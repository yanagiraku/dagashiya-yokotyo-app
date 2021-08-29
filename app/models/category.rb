class Category < ActiveHash::Base
  self.data =[
    { id: 1, name: '---'},
    { id: 2, name: 'スナック'},
    { id: 3, name: 'チョコレート'},
    { id: 4, name: '飴・ラムネ・ガム'},
    { id: 5, name: 'ゼリー・グミ・ドリンク'},
    { id: 6, name: 'パン・米・餅'},
    { id: 7, name: '珍味'}
  ]

  include ActiveHash::Associations
  has_many :products

end