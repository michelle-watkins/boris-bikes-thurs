require 'docking_station'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it "checks release_bike returns a bike" do
        bike = subject.release_bike
        expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock).with(1).argument}

    it { is_expected.to respond_to :bike }

    it "docks a bike" do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
    end
    
end