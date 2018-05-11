def reformat_languages(languages)
  new_hash = {} #create new hash to store updated info
  languages.each do |oo_or, lang_hash| #iterate through the first level of old hash
    lang_hash.each do |lang, att_hash| #iterate through the second level of old hash
      new_hash[lang] ||= att_hash #create new hash as value for language key which contains the :type hash
      new_hash[lang][:style] ||= [] #create new value for lang hash called style and set it to an empty array
      new_hash[lang][:style] << oo_or #grab value of initial key and push it to style array
    end
  end
  new_hash
end
