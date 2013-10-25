class LogEntry < ActiveRecord::Base
  attr_accessible :description, :class, :id

  #This is the register method
  def self.register description, object = nil
  	
  	#Instantiate a new log_entry
  	log_entry = self.new
  	log_entry.description = description

  	#if the object param is not nil set the class and id
  	if not object.nil?
  		log_entry.class = object.class
  		log_entry.id = object.id
  	end

  end

end
