class Caption < ApplicationRecord
  belongs_to :video

  require 'pry'
  require 'open-uri'


  def scrape
    html = open(self.video.url)
    doc = Nokogiri::HTML(html)
    doc.css("#movie_player")
    binding.pry
    # #movie_player > div.ytp-chrome-bottom > div.ytp-chrome-controls > div.ytp-right-controls > button.ytp-subtitles-button.ytp-button
    https://www.youtube.com/api/timedtext?v=8EQWhQt9OQo&asr_langs=de%2Cen%2Ces%2Cfr%2Cit%2Cja%2Cko%2Cnl%2Cpt%2Cru&caps=asr&exp=xftt&xorp=true&xoaf=5&hl=en&ip=0.0.0.0&ipbits=0&expire=1609031060&sparams=ip%2Cipbits%2Cexpire%2Cv%2Casr_langs%2Ccaps%2Cexp%2Cxorp%2Cxoaf&signature=CCC72075691F188F40211AD402B7ECCF2E71C356.9475C661EC490351DB90CE3F9575C554713DCD63&key=yt8&kind=asr&lang=en&fmt=json3&xorb=2&xobt=3&xovt=3
  
    cc_url_hash = {
      prefix: 'https://www.youtube.com/api/timedtext?v=',
      timedtext_code: '8EQWhQt9OQo',
      suffix: '&asr_langs=de%2Cen%2Ces%2Cfr%2Cit%2Cja%2Cko%2Cnl%2Cpt%2Cru&caps=asr&exp=xftt&xorp=true&xoaf=5&hl=en&ip=0.0.0.0&ipbits=0&expire=1609031060&sparams=ip%2Cipbits%2Cexpire%2Cv%2Casr_langs%2Ccaps%2Cexp%2Cxorp%2Cxoaf&signature=CCC72075691F188F40211AD402B7ECCF2E71C356.9475C661EC490351DB90CE3F9575C554713DCD63&key=yt8&kind=asr&lang=en&fmt=json3&xorb=2&xobt=3&xovt=3'
    }
  
  end
end
