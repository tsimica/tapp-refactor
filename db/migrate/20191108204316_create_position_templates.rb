class CreatePositionTemplates < ActiveRecord::Migration[6.0]
  def change
    create_table :position_templates do |t|
      t.references :session, null: false, foreign_key: true
      t.string :position_type
      t.string :offer_template

      t.timestamps
    end
  end
end
