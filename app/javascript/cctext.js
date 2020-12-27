$(() => {
  console.log("jquery has entered the building ...");
  listeners();
});

const listeners = () => {
  $('.video').on('click', (event) => {
    // location.href = event.currentTarget.children[0].href
    $('button.ytp-subtitles-button').trigger();

    $.ajax({
      url: 'https://www.youtube.com/api/timedtext?v=uFBqCPj6n44&asr_langs=de%2Cen%2Ces%2Cfr%2Cit%2Cja%2Cko%2Cnl%2Cpt%2Cru&caps=asr&exp=xftt&xorp=true&xoaf=5&hl=en&ip=0.0.0.0&ipbits=0&expire=1609040282&sparams=ip%2Cipbits%2Cexpire%2Cv%2Casr_langs%2Ccaps%2Cexp%2Cxorp%2Cxoaf&signature=DA077C7B51CB2BCB255E5640F11EF08AACBD2B54.057817DCF3C798A66196D66CFE5D080C122B4927&key=yt8&kind=asr&lang=en&fmt=json3&xorb=2&xobt=3&xovt=3',
      dataType: 'json'
    }).done(response => {
      console.log('response: ', response.body)
      debugger;
    })
  })
};
