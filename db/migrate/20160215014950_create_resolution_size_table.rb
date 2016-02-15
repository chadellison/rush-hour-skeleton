class CreateResolutionSizeTable < ActiveRecord::Migration
  def change
    create_table :resolution_sizes do |t|
      t.string :resolution_width
      t.string :resolution_height
    end
  end
end
