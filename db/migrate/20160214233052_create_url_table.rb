class CreateUrlTable < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :route
    end
  end
end
