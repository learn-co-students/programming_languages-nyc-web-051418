require 'pry'

def reformat_languages(languages)

  new_lang = {}

  languages.each do |style, lang_type|
    lang_type.each do |lang, type|

      if !new_lang.has_key?(lang)
        new_lang[lang] = type
      end

      if new_lang[lang].has_key?(:style)
        new_lang[lang][:style] << style
      elsif
        new_lang[lang].merge!({style: [style]})
      end

    end
  end

  new_lang

end
