# Ruby program to demonstrate that private 
# and protected method can't be accessed 
# outside the class even after inheritance 

class Geeks 

  # public method 
  def method_1 
  
    p "Public Method of class Geeks"
  
  end

  # defining the protected method 
  protected 

  def method_2 
    
    p "Protected Method of class Geeks"
  end

  # defining the private method 
  private 

  def method_3 
    
    p "Private Method of class Geeks"
    
  end
end

# Sudo class inheriting Geeks class 
class Sudo < Geeks 
  
  # public method of Sudo class 
  def method_4 
    
    p "Public Method of Sudo Class"
    
  
  
    # calling the public method 
    # of Geeks class 
    method_1 

    # creating object of class Sudo 
    # inside the public method of 
    # class Sudo 
    obj_inside_sudo = Sudo.new

    # calling the protected 
    # method of class Geeks 
    obj_inside_sudo.method_2 
    
    # calling the private 
    # method of class Geeks 
    # using an explicit receiver 
    obj_inside_sudo.method_3 rescue p "You can't Access!"
  

    
  end
end



# creating an object of class Sudo 
obj_sudo = Sudo.new

# calling the public method 
# of class Sudo 
obj_sudo.method_4 
