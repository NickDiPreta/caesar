def caesar_cipher(input,shift)
    shift = shift % 26 
    if shift < 0
      shift = 26 + (shift % 26) end  
  fail = []
  new_chars = input.bytes.map{|c| c + shift }
  # I included shift in the mapping above so c could be used as a reference and 
  new_chars.each do |c|
    if (c - shift) < 91 && c > 90
      c = (65 + (c-91))
      fail.push(c.chr)
    else if c - shift < 123 && c > 122
      c = (97 + (c-123))
     fail.push(c.chr)
    else if c-shift > 65  
      fail.push(c.chr)
    else 
      c = c-shift
      fail.push(c.chr)
    end
  end  
  end
  end
  return fail.join
  end
  puts caesar_cipher("What a string!", 5)