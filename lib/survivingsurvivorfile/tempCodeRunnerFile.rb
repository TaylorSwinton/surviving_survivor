        html = open('https://survivor.fandom.com/wiki/Survivor:_Ka%C3%B4h_R%C5%8Dng')
        doc = Nokogiri::HTML(html)
        binding.pry