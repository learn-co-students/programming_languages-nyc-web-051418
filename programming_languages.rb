require 'pry'
def reformat_languages(languages)
  new_hash = {}
    languages.each do |style, lang|
      lang.each do |lang_name, type|
        if !new_hash[lang_name]
          new_hash[lang_name] = type
        new_hash[lang_name][:style] = []
      end 
      new_hash[lang_name][:style].push(style) 
    end 
  end
  new_hash
end
