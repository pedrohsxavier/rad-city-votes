class CreateMayors < ActiveRecord::Migration[5.2]
  def change
    create_table :mayors do |t|
      t.string :nome
      t.string :email
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
