require_relative "../utils/constants.rb"

module Helpers
  def self.caesar_cipher(text = "", variant = 0)
    if text.empty? && variant == 0
      puts "Debes cagar los parametros con datos correctos"
    end

    result = ""

    text.each_char do |char|
      if Utils::ALPHABET.include?(char.downcase)
        index = Utils::ALPHABET.index(char.downcase)
        new_index = (index + variant) % Utils::ALPHABET.size
        new_char = Utils::ALPHABET[new_index]

        result << (char.match?(/[A-Z]/) ? new_char.upcase : new_char)
      else
        result << char
      end
    end

    puts "#{result}"
  end
end
