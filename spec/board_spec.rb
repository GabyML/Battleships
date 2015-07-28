require 'board'

describe Board do

  let(:ship){double(:ship, {position: @pos = 'A1', hits: @hits = 0 } ) }

  it { is_expected.to respond_to(:place).with(1).argument }

  #it { is_expected.to respond_to(:fire).with(2).argument }

  it 'places a ship' do
    subject.place(ship)
    expect(subject).not_to be_empty
  end

  it 'reports if all the ships are sunk' do
    expect(subject).to respond_to(:report_sunk)
  end

  #it 'says hit for a hit' do
   # subject.place (ship)
    #expect(subject.fire(ship,'A1')).to eq 'Hit'
  #end

  #it 'reports missed targets' do
   # subject.place (ship)
    #expect(subject.fire(ship, 'A5')).to eq 'Missed'
  #end
end
