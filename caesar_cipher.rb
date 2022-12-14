def caesar_cipher(string, key)
    arr = string.chars.map {|a| a.ord}
    check = arr.map {|num| (num >=97 && num <= 122) || 
        (num >= 65 && num <=90)? num : num.chr}
    wrap = check.map { |num| num.is_a?(Numeric) ? num + key : num}
    arr2 = wrap.map { |num| num.is_a?(Numeric) && num > 122 || 
        (num.is_a?(Numeric) && num > 90 && num <97) ? num - 26 : num }
    p a = arr2.map { |e| e.chr}.join('')
end

caesar_cipher("Welcomme to my first small Ruby project!", 4)