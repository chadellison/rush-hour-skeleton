class CreateDropPayloads < ActiveRecord::Migration
  def change
    drop_table :payloads
  end
end
