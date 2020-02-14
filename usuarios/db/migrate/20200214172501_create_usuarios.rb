class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.date :createdAt

      t.timestamps
    end
  end
end
