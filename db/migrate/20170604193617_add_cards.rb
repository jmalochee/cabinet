class AddCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :card_type, null: false
      t.string :card_name, null: false
      t.text :content
      t.string :source

      t.belongs_to :member
    end
  end
end
