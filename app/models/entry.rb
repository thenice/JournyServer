class Entry < ActiveRecord::Base
  attr_accessible :journy_id, :lat, :long, :name, :note, :photo_description
  belongs_to :journey
end
