$(() => {
  console.log("jquery has entered the building ...");
  getVideo()
});

const getVideo = () => {
  $(".video").on("click", (event) => {
    event.preventDefault();
    
    location.href = event.currentTarget.children[0].href
    $("button.ytp-subtitles-button").click();
    getCaptions();
  });
}

const getCaptions = () => {
  // define regex variable to get captionsUrl
  let regexp = new RegExp(
    /playerCaptionsRenderer.*?(youtube.com\/api\/timedtext.*?)"/
    );
    
    // execute regex to get captionsUrl
    let captionsUrl = regexp.exec(document.body.innerHTML);
    
    
    debugger;
  $.ajax({
    url: captionsUrl,
    dataType: "json",
  }).done((response) => {
    console.log("response: ", response);
    debugger;
  });
};
