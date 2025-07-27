class AddIsDefaultToSlugs < ActiveRecord::Migration[7.0]
  def change
    add_column :slugs, :is_default, :boolean, default: false, null: false
  end
end
