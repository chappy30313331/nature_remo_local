window.fetchSignal = function () {
  fetch('/signal').then(function(response) {
    return response.json()
  }).then(function(json) {
    document.querySelector('input#button_signal').value = json['signal']
  });
};
