class CreateHelos < ActiveRecord::Migration
  def change
    create_table :helos do |t|
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
