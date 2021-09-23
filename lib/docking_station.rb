require_relative 'bike'

class DockingStation
    def release_bike
        return Bike.new
    end

    def dock(bike)
        return @bike = bike
    end

    attr_reader :bike
end