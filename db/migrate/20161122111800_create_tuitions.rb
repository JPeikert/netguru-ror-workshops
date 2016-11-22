class CreateTuitions < ActiveRecord::Migration
  def change
    create_table :tuitions do |t|
      t.integer :month

      t.timestamps null: false
    end
  end
end
