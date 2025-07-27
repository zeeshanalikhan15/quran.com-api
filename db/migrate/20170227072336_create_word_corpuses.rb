# frozen_string_literal: true

class CreateWordCorpuses < ActiveRecord::Migration[5.0]
  def change
    create_table :word_corpuses do |t|
      t.references :word
      t.string :location
      t.text :description
      t.string :image_src
      t.jsonb :segments_data, default: {}

      t.timestamps
    end
  end
end
