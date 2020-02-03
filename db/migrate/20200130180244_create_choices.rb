class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices do |t|
      t.string :title
      t.integer :weight, :default => 0
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
