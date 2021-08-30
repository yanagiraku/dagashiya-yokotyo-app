class Memory < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :memory
  end
end
