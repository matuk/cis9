class Item < ActiveRecord::Base
  attr_accessible :description, :occured_at, :recorded_at, :itemtype_id
  belongs_to :patient
  belongs_to :itemtype, class_name: "ItemType"
end
