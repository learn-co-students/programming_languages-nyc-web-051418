require 'pry'


def reformat_languages(languages)
 
    new_hash = {}
    type_array = []
  
    languages.each do |type, data|
        data.each do |programming_language, type_with_value|
          
          

            type_with_value.each do |key, value|
                
                
                type_array << type 
                #new_hash[programming_language] = {key => value, :style => type_array }
                new_hash[programming_language] = {key => value}
          
                
            end
            
            new_hash[programming_language] = {:style => type_array }
        
    binding.pry

        end #end data each
        
     
    end #end languages.each
    new_hash
end #end method







     
          # new_hash[programming_language] = type_with_value
          #   new_hash[:style] = type_array
          
          
          # new_hash[big_key] = {
          
          # type_with_value.each do |key, value|
            
          #   new_hash[key] = value
            
          #   binding.pry
            
          # end





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
 