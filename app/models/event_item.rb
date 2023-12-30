class EventItem < ApplicationRecord
  belongs_to :event

  default_scope {order("#{self.table_name}.time ASC")}
end
