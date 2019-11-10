# frozen_string_literal: true

class CreateSessions < ActiveRecord::Migration[6.0]
    def change
        create_table :sessions do |t|
            t.datetime :start_date
            t.datetime :end_time
            t.string :name, null: false
            t.float :rate1
            t.float :rate2

            t.timestamps
        end
        add_index :sessions, :name, unique: true
    end
end
