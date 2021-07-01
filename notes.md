video
url
title

caption
url
timetext_id
url_prepend
url_append

#movie_player > div.ytp-chrome-bottom > div.ytp-chrome-controls > div.ytp-right-controls > button.ytp-subtitles-button.ytp-button

https://www.youtube.com/api/timedtext?v=oAtazW3rIUg&asr_langs=de%2Cen%2Ces%2Cfr%2Cit%2Cja%2Cko%2Cnl%2Cpt%2Cru&caps=asr&exp=xftt&xorp=true&xoaf=5&hl=en&ip=0.0.0.0&ipbits=0&expire=1609113928&sparams=ip%2Cipbits%2Cexpire%2Cv%2Casr_langs%2Ccaps%2Cexp%2Cxorp%2Cxoaf&signature=ED146FC249091EE05854A9D81149874E28D27316.5F9EF3FA0BD8B14911AD4C8D20CE9DD0C43E41A1&key=yt8&kind=asr&lang=en&fmt=json3&xorb=2&xobt=3&xovt=3

## youtube closed caption fetcher
- Rails app
- Chrome extension
- Paste link to youtube video
- Hit getCaptions button
- Open url
- javascript find the CC button, click it
- find the network request that gets `timedtext` url
- get that url
- process the response
  - iterate through the `events` node of the response
  - iterate through the `segs` node of each `event`
- 
- Displays human formatted text of the captions file



regex to get url

var regexp = new RegExp(/playerCaptionsRenderer.*?(youtube.com\/api\/timedtext.*?)"/);