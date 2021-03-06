# frozen_string_literal: true

# Create the message table
class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :subject, { null: false }
      t.integer :version, { default: 1 }
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
