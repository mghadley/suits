class CreateOrderCustomizations < ActiveRecord::Migration
  def change
    create_table :order_customizations do |t|

  		t.references :suit, index: true, foreign_key: true
  		t.references :customization, index: true, foreign_key: true
  		
      t.timestamps null: false
    end
  end
end
