class CreateApplicants < ActiveRecord::Migration[7.1]
  def change
    create_table :applicants, id: :uuid do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :position, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
