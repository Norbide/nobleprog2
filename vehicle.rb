class Vehicle
    class AllDoorsOpenException < StandardError; end
    class AllDoorsClosedException < StandardError; end
    
    def init
        @open_doors_count = 0
    end
    
    def open_door
        raise AllDoorsOpenException if @open_doors_count >= self.class::DOORS_COUNT
        open_doors_count += 1
    end

    def close_door
        raise AllDoorsClosedException if @open_doors_count == 0
        open_doors_count -= 1
    end

    def doors_count
        @open_doors_count
    end

class PassengerCar < Vehicle
    DOORS_COUNT = 4
end

class Coach < Vehicle
    DOORS_COUNT = 6
end