class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end
end

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end

class Map
    def initialize
        @map = []
    end

    def set(key, value)
        over_write = nil
        @map.each_with_index do |k_v_pair, idx|
            if k_v_pair[0] == key
                until (over_write == "y") || (over_write == "n")
                    p "Key already exists, overwrite? y or n"
                    over_write = gets.chomp
                end
                @map[idx][1] = value if over_write == "y"
            end 
        end
        @map << [key, value] if over_write == nil
    end

    def get(key)
        @map.each_with_index do |k_v_pair|
            return k_v_pair[1] if k_v_pair[0] == key
        end
    end

    def delete(key)
        @map.each_with_index do |k_v_pair|
            @map.delete(k_v_pair) if k_v_pair[0] == key
        end
    end

end