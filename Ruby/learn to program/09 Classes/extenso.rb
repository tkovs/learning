#Expandindo a classe Integer :o

class Integer
    def ext
        case self
            when 3
                return 'Três'
            when 2
                return 'Dois'
            when 1
                return 'Um'
            else
                return 'Sei lá!'
        end
    end
end

puts 2.ext
puts 3.ext
puts 6.ext