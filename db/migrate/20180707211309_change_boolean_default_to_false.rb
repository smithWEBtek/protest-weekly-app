class ChangeBooleanDefaultToFalse < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :event_users, :RSVP, from: true, to: false 
  	change_column_default :event_users, :need_ride, from: true, to: false
  	change_column_default :event_users, :can_drive, from: true, to: false  
  end
end
