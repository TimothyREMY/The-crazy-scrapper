require_relative '../lib/mairie_chrismas.rb'
require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))


describe "Gives the e-mail adress of each commune of the Val d'Oise" do
    it "Gives the e-mail adress of each commune of the Val d'Oise" do
      expect(get_townhall_urls(page.xpath('//*[@id="voyance-par-telephone"]/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/a[1]'))).to eq("/95/ableiges.html")
    end
  end


  describe "Gives us a Hash of the currencies names and their prices" do
    it "Gives us the currencies names and their prices" do
      expect(hash).to eq(Hash)
    end
  end