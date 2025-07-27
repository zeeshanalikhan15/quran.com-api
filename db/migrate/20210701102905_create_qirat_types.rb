# frozen_string_literal: true

class CreateQiratTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :qirat_types do |t|
      t.string :name
      t.text :description
      t.integer :audio_recitations_count

      t.timestamps
    end

    add_column :recitations, :qirat_type_id, :integer

    add_index :recitations, :qirat_type_id
    add_index :audio_recitations, :qirat_type_id
  end
end
