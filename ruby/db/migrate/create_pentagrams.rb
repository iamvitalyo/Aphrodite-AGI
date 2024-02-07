class CreatePentagrams < ActiveRecord::Migration
  def change
    create_table :petagrams do |t|
      t.string :data
      t.string :en

      t.timestamps
    end
  end
end