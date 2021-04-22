require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))


    communes_names = page.xpath('//tr/td//a[contains(@href, "95")]')

def get_townhall_urls (communes_names)
    townhall_url = []
    townhall_name = []
    communes_names.each do |commune|
        townhall_name << commune.text
        i_commune = commune['href']
        t_commune = i_commune[1..]
        townhall_url << t_commune
    end
    return townhall_url["communes_names"]
    get_townhall_email(townhall_url, townhall_name)
    
end
    
def get_townhall_email(townhall_url, townhall_name)
    get_townhall_email = []
    
    townhall_url.each do |commune|
        page_commune = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com#{commune}"))
    
        
        communes_names_email = page_commune.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')

        
        
        communes_names_email.each do |email|
            get_townhall_email << email.text
        end
    end
    

    global = Hash[townhall_name.zip(get_townhall_email)]
    puts global
end



get_townhall_urls(communes_names)
    

    
    
    





