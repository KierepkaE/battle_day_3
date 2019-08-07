require 'player'

describe Player do
  let(:name) {double(:name)}
  subject(:player) {described_class.new(name)}

  it 'has a name' do
    player.get_hit
    expect(player.name).to eq name
  end

  it '#get_hit change HP' do
    expect{subject.get_hit()}.to change{subject.HP}.by(-10)
  end

end