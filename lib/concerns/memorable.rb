module Memorable
   
   
    module ClassMethods
       def reset_all
        all.clear
       end
    
       def count
         all.count
       end
    
        def find_by_name(name)
            all.detect{|a| a.name == name}
        end
    end
    
    
    module InstanceMethods
        def to_param
            name.downcase.gsub(' ', '-')
        end
        
        def initialize
            self.class.all.push(self)
        end
        
    end
    
end