class CreateTicketWatchersTable < ActiveRecord::Migration
  def change
		create_table :ticket_watchers, :id => false do |t|
			t.integer :ticket_id, :user_id
		end
	end
end
