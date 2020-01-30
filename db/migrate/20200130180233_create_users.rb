class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, :default => 'user@gmail.com'
      t.string :name, :default => 'User'

      t.timestamps
    end
  end
end
