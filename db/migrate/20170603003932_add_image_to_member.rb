class AddImageToMember < ActiveRecord::Migration[5.0]
  def change
    change_table :members do |t|
      t.string :image
    end
  end
end
