class CreatePositions < ActiveRecord::Migration[7.1]
  def change
    create_table :positions, id: :uuid do |t|
      t.string :name
      t.integer :carrer
      t.integer :contract
      t.boolean :remote
      t.string :city
      t.string :state
      t.text :summary
      t.text :description
      t.boolean :publish
      t.references :company, null: false, foreign_key: true, type: :uuid
      t.timestamps
    end
  end
end
