app =
  initialize: () -> document.addEventListener 'deviceready', this.onDeviceReady.bind(this), false
  onDeviceReady: () -> this.receivedEvent 'deviceready'
  receivedEvent: (id) ->
    # parentElement = document.getElementById id
    # listeningElement = parentElement.querySelector '.listening'
    # receivedEvent = parentElement.querySelector '.received'

    # listeningElement.setAttribute 'style', 'display:none;'
    # receivedElement.setAttribute 'style', 'display:block;'

    root = document.getElementById id
    cordova.InAppBrowser.open 'res/elastic_doc/index.html', '_self', 'location=no'


    console.log 'Received Event: ' + id

app.initialize()
