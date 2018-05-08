def reformat_languages(languages)
  # your code here
  reformatting={}
  languages.each do |style,lang|
    lang.each do |name,type|
      if !reformatting[name]
        reformatting[name] = type
        reformatting[name][:style]=[]
      end
      reformatting[name][:style] << style
    end
      end
      reformatting
end
