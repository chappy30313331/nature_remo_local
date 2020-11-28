window.fetchSignal = function () {
  fetch('/signal').then(function(response) {
    return response.json()
  }).then(function(json) {
    document.querySelector('input#button_signal').value = json['signal']
  });
};

window.sendSignal = function (button_id) {
  fetch("/signal", {
    method: 'POST',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      button_id: button_id,
      authenticity_token: document.querySelector('meta[name=csrf-token]').getAttribute('content')
    })
  });
};
