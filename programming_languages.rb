require 'pry'
$first_level = nil

def reformat_languages(languages)
 

  new_hash = {}
  type_array = []
  
  
languages.each do |type, data|
    #binding.pry
    #key is oo
    #value is data
    
    data.each do |programming_language, type_with_value|
      new_hash[programming_language] = type_with_value
      $first_level = programming_language
    end #end data each
  end #end languages.each
  
languages.each do |type, data|
  
    new_hash[$first_level] = type
    binding.pry
  
end #end languages each (second time)  
  
 
 
 
  #return new_hash at end of method
end













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
 