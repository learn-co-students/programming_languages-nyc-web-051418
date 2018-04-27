require 'pry'
def reformat_languages(languages)
  hash = {}
  languages.each do |type|
    type[1].each do |language|
      hash[language[0]] = language[1]
      hash[language[0]][:style] = []
    end
  end

  languages.each do |type|
    type[1].each do |language|
      hash[language[0]][:style] << type[0]
    end
  end
  hash
end
