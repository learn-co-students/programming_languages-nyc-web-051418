require "pry"

def reformat_languages(languages)
new_hash = {}
languages.each do |style,langs|
  langs.each do |lang,type|
    type[:style] = [style]
    # new_hash[lang] = type
    if new_hash[lang]
      new_hash[lang][:style] << style
    else
      new_hash[lang] = type
    end
  end
end
return new_hash
  
end
