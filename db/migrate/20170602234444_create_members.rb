class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :position, null: false
      t.text :about, null: false
    end
  end
end
