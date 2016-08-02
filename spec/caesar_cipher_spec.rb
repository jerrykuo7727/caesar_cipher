require "caesar_cipher.rb"

describe 'caesar_cipher' do
  context "given 'HELLO, 3'" do
    it "returns 'KHOOR'" do
      expect(caesar_cipher('HELLO', 3)).to eql('KHOOR')
    end
  end
  context "given 'attackatdawn, 2'" do
    it "returns 'cvvcemcvfcyp'" do
      expect(caesar_cipher('attackatdawn', 2)).to eql('cvvcemcvfcyp')
    end
  end
  context "given 'Genius without education is like silver in the mine', 13" do
    it "returns 'Travhf jvgubhg rqhpngvba vf yvxr fvyire va gur zvar'" do
      expect(caesar_cipher('Genius without education is like silver in the mine', 13)).to eql('Travhf jvgubhg rqhpngvba vf yvxr fvyire va gur zvar')
    end
  end
end