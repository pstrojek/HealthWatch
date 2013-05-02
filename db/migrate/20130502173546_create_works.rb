class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
