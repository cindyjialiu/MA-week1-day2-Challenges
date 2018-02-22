require './lib/docking_station.rb'

describe DockingStation do
  bike = Bike.new
  storage = []

  it { should respond_to(:release_bike, :bike_available?) }
  it { expect(subject.release_bike).to be_a Bike }
  it { expect(subject.release_bike.working?).to eq true }
  it { should respond_to(:dock).with(2).argument }
  it { expect(subject.dock(bike, storage)).to match [bike] }
  it { expect { subject.bike_available? }.to raise_error("Sorry, no bike in the dock") }
end
