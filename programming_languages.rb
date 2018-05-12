=begin
def reformat_languages(languages)
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
end
=end
def reformat_languages(languages)
 # your code here
  new_hash = Hash.new
  languages.each do |paradigm, paradigm_languages|
    paradigm_languages.each do |language, type_hash|
      if !new_hash.keys.include?(language)
        styles = Array.new
        styles.push(paradigm)
        new_hash[language] = { :type => type_hash[:type], :style => styles }
      else
        new_hash[language][:style].push(paradigm)
      end
    end
  end
  new_hash
end
