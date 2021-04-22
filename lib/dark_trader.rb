require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))


def dark_trader(page)
    crypto_name_links = page.xpath('//tr/td[2]//a[contains(@href, "currencies")]')
    crypto_price_links = page.xpath('//tr/td[5]//a[contains(@href, "markets")]')


        crypto_name = []
        crypto_price = []

        crypto_name_links.each do |title|
            crypto_name << title.text
        end


        crypto_price_links.each do |title|
            crypto_price << title.text
        end

        number = crypto_name.length
        return number

end


def hash(crypto_name, crypto_price)
    global = Hash[crypto_name.zip(crypto_price)]
        
    return global
end

    dark_trader(page)