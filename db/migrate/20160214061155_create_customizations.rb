class CreateCustomizations < ActiveRecord::Migration
  def change
    create_table :customizations do |t|
    	t.string :name

      t.timestamps null: false
    end
  end
end
