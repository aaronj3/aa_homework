class Stack
    def initialize()
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
    def initialize()
        @queue = []
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue[-1]
    end
end

class Map
    def initialize()
        @map = Array.new
    end

    def set(key,value)
        @map.each do |ele|
            if ele[0] == key
                ele[1] = value
                return
            end
        end
        pair = [key,value]
        @map << pair
    end

    def delete(key)
        @map.each_with_index do |pair, idx|
            if pair[0] == key
                @map = @map[0...idx] + @map[idx + 1..-1]
                return
            end
        end
        @map
    end
end
