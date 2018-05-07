require 'pry'
def reformat_languages(language_data)
  new_hash = {}
  language_data.each do |style, languages|
    languages.each do |lang_name, lang_data|
      new_hash[lang_name] ||= lang_data
      new_hash[lang_name][:style] ||= []
      new_hash[lang_name][:style].push(style)
    end
  end
  new_hash
end
