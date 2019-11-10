class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :position, null: false, foreign_key: true
      t.references :applicant, null: false, foreign_key: true
      t.datetime :contract_start
      t.datetime :contract_end
      t.text :note
      t.string :offer_override_pdf

      t.timestamps
    end
    add_index :assignments, [:position_id, :applicant_id], unique: true
  end
end