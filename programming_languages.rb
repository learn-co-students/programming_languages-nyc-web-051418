def reformat_languages(languages)
  new_hash = {}
    languages.each do |style, spec_lang|
      spec_lang.each do |name, type|
        unless new_hash[name]
          new_hash[name] = type
          new_hash[name][:style] = []
        end
      new_hash[name][:style] << style
    end
  end
  new_hash
end
