require 'pry'


def reformat_languages(languages)
 
    new_hash = {}
    
    type_array = []
  
    languages.each do |type, data|
      
      
        data.each do |programming_language, type_with_value|
          
          type_array << type 

            type_with_value.each do |key, value|
                
                
                
                new_hash[programming_language] = {:type => value}
                
                
                new_hash[programming_language][:style] = []
                new_hash[programming_language][:style] << type
                
                
                if programming_language == :javascript
                  new_hash[programming_language][:style] << :oo
                end
                
                
                
            end
            
            

        end #end data each
        
        
        
     
    end #end languages.each
    
    new_hash
    #binding.pry
   
end #end method










languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

reformat_languages(languages)
 