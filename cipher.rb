def caesar_cipher (message, shift)
    max_UPCASE = "Z".ord.to_i
    max_DOWNCASE = "z".ord.to_i
    min_UPCASE = "A".ord.to_i
    min_DOWNCASE = "a".ord.to_i
    encrypted = []
    characters = message.split("")
    characters.each do |c| 
        converted_int = c.ord.to_i
        if converted_int.between?(min_DOWNCASE, max_DOWNCASE) || converted_int.between?(min_UPCASE, max_UPCASE)
            if c.downcase == c
                converted_int_shift = converted_int + shift
                if converted_int_shift > max_DOWNCASE
                    converted_int_shift-= 26
                end
            end
            if c.upcase == c
                converted_int_shift = converted_int + shift
                if converted_int_shift > max_UPCASE
                    converted_int_shift-= 26
                end
            end
        else
            converted_int_shift = c.ord.to_i
        end
        encrypted.push(converted_int_shift.chr)
    end
    puts encrypted.join("")
    return encrypted.join("")
end
caesar_cipher("What a string!", 5)