class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.boolean :favorite,  null: false
      t.references :user,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
