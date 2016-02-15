class CreateUserAgentTable < ActiveRecord::Migration
  def change
    create_table :user_agents do |t|
      t.string :os
      t.string :browser
    end
  end
end
