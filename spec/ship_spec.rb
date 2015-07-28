require 'ship'

describe Ship do

	subject = Ship.new 'A1'

  it 'initializes with a position' do
    init = described_class.new('A4')
    expect(init.position).to eq 'A4'
  end

  it 'will not place a ship beyond the board' do
  	out = Ship.new 'Z4'
    expect { out.position }.to raise_error('Outside the board')
  end

  it 'has a position' do
  	#subject = Ship.new 'A1'
  	expect(subject.position).not_to eq nil
  end

  it 'can be hit' do
  	#subject = Ship.new 'A1'
  	expect(subject.receive_hit('A1')).to eq 'Hit'
  end

  it 'can be missed' do
  	missed = Ship.new 'A5'
  	expect(missed.receive_hit('A1')).to eq 'Missed'
  end

  it 'will record number of hits' do
  	subject = Ship.new 'A1'
  	subject.receive_hit('A1')
  	expect(subject.hits).to eq 1
  end

  it 'will not be hit when missed' do
  	subject = Ship.new 'A1'
  	subject.receive_hit('A4')
  	expect(subject.hits).to eq 0
  end

  it 'is not sunk initially' do
  	#subject = Ship.new 'A1'
  	expect(subject.sunk).to eq false
  end

  it 'is sunk after hit' do
  	#subject = Ship.new 'A1'
  	subject.receive_hit 'A1'
  	expect(subject.sunk).to eq true
  end

end

#Some test need a new ship because the hit counter gets modified, try to see if you can get rid of them 
