require_relative '../lib/dark_trader.rb'



describe "Gives us the currencies names and their prices" do
    it "Gives us the currencies names and their prices" do
      expect(dark_trader).to eq("200")
    end
  end


  describe "Gives us a Hash of the currencies names and their prices" do
    it "Gives us the currencies names and their prices" do
      expect(hash).to eq(Hash)
    end
  end