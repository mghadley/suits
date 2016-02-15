class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|

    	t.float :shoulders
    	t.float :sleeve
    	t.float :chest
    	t.float :stomach
    	t.float :jacketlength
    	t.float :front
    	t.float :back
    	t.float :waist
    	t.float :hips
    	t.float :crotch
    	t.float :pantslength
    	t.float :thigh
    	t.float :kneww
    	t.float :ankle

      t.timestamps null: false
    end
  end
end
