module Calculate
  def count_characters(number, keys)
    n = number.to_s
    response = ''
    n.split(//).each_with_index do |char, i|
      kill_loop = false
      position = n.size - i
      case position
      when 1
        response << keys[char] if keys[char]
      when 2
        k = "#{char}#{n[i+1]}"
        if keys[k]
          response << keys[k] 
          break
        elsif keys["#{char}0"]
          begin
            response << keys["#{char}0"]
          rescue TypeError
            puts "Type error for: #{char}0 || #{n}"
          end
        end
      when 3
        k = "#{char}#{n[i+1]}#{n[i+2]}"
        if keys[k]
          response << keys[k]
          break
        else
          response << "#{keys[char]}hundredand"
        end
      when 4
        response << "onethousand"
        break
      end
    end
    response.size
  end
end