def char_shift(a, base, offset)
    (((a.ord - base + offset) % 26 + base)).chr
end

def caesar_cipher(s, offset)
    s.chars.map do |a|
        case a
        when "a".."z"
            char_shift(a, "a".ord, offset)
        when "A".."Z"
            char_shift(a, "A".ord, offset)
        else
            a 
        end
    end.join
end

puts "Enter your text"
user_text = gets.chomp

puts "Enter your offset"
user_offset = gets.chomp.to_i

p caesar_cipher(user_text, user_offset)