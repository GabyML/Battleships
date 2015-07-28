require 'ship'

describe Ship do
  it 'initializes with a position' do
    subject = described_class.new('A4')
    expect(subject.pos).to eq 'A4'
  end

  it 'will not place a ship beyond the board' do
    expect { Ship.new 'Z4' }.to raise_error('Outside the board')
  end

  it 'can be hit' do
  	subject = Ship.new 'A1'
  	subject.receive_hit 'A1'
  	expect(subject).to eq 'Hit'
  end

end
