class CreateVoters < ActiveRecord::Migration[5.2]
  def change
    create_table :voters do |t|
      t.string :nome
      t.string :cpf

      t.timestamps
    end
  end
end
