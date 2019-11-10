class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.references :session, null: false, foreign_key: true
      t.string :position_code
      t.string :position_title
      t.float :est_hours_per_assignment
      t.datetime :est_start_date
      t.datetime :est_end_date
      t.string :position_type

      t.timestamps
    end
  end
end
