class CreateSpreePlugins < ActiveRecord::Migration
  def change
    create_table :spree_plugins do |t|
      t.string :name
      t.string :type
      t.text :code
      t.string :css
      t.string :state

      t.timestamps
    end
  end
end
