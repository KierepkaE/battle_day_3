require 'game'

describe Game do

  let(:victim){double("Player_inst")}

  describe "#attack" do
    it "substrat hit point from the victim" do
      expect(victim).to receive(:get_hit)
      allow(victim).to receive(:HP).and_return(90)
      subject.attack(victim)
      expect(victim.HP).to eq(90)
    end
  end
end