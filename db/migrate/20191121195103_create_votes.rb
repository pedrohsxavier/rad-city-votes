class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.references :city, foreign_key: true
      t.references :voter, foreign_key: true

      t.timestamps
    end
  end
end
