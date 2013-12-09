class Bill < ActiveRecord::Base
  has_many :items
  
  def total
    t = 0
    self.items.each { |i| t += i.price }
    return t
  end
  
  def is_pagado
  	if self.pagado
  	 return "SI"
  	else
  	 return "NO"
  	end
  end

end
