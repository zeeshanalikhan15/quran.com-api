# frozen_string_literal: true

class CreateQrComments < ActiveRecord::Migration[7.0]
  def change
    create_table :qr_comments do |t|
      t.text :body
      t.text :html_body

      t.integer :replies_count, default: 0
      t.integer :post_id, index: true
      t.integer :parent_id, index: true
      t.integer :author_id, index: true

      t.timestamps
    end
  end
end
