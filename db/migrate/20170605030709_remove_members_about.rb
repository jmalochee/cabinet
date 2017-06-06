class RemoveMembersAbout < ActiveRecord::Migration[5.0]
  def change
    change_table :members do |t|
      t.remove :about
    end
  end
end
