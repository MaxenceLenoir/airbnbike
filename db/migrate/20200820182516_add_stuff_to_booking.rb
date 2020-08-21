class AddStuffToBooking < ActiveRecord::Migration[6.0]
  def change
    add_monetize :bookings, :amount, currency: { present: false }
    add_column :bookings, :checkout_session_id, :string
  end
end
