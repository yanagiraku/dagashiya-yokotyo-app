class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.string  :title
      t.text    :memory
      t.date    :created_on
      t.timestamps
    end
  end
end
