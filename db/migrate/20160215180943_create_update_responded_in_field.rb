class CreateUpdateRespondedInField < ActiveRecord::Migration
  def change
    change_table :payload_requests do |t|
      t.remove :responded_in
      t.integer :responded_in
    end
  end
end
