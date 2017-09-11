class CreateFinalUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :final_users do |t|
      t.string :name
      t.string :email
      t.references :User, foreign_key: true

      t.timestamps
    end
  end
end
