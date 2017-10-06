class AddRoomToEnquiries < ActiveRecord::Migration[5.1]
  def change
    add_column :enquiries, :room, :string
  end
end
