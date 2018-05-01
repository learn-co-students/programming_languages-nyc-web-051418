require 'pry'


def reformat_languages(languages)
 
    new_hash = {}
    type_array = []
  
  
    languages.each do |type, data|
      
    binding.pry
      type_array << type  
      
  
      data.each do |programming_language, type_with_value|
          
          new_hash[programming_language] = type_with_value
          new_hash[:style] = type_array
 
      end #end data each
        
       
          
          
     
    end #end languages.each

binding.pry
     new_hash
     
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
 