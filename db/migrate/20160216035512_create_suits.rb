class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|

    	t.float :shoulders
    	t.float :sleeve
    	t.float :chest
    	t.float :stomach
    	t.float :jacket_length
    	t.float :front
    	t.float :back
    	t.float :waist
    	t.float :hips
    	t.float :crotch
    	t.float :pants_length
    	t.float :thigh
    	t.float :knee
    	t.float :ankle

        t.integer :buttons
        t.integer :vents
        t.string  :lapel


    	t.references :material, index: true, foreign_key: true
   		t.belongs_to :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
