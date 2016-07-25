class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t. :name
      t. :email

      t.timestamps
    end
  end
end