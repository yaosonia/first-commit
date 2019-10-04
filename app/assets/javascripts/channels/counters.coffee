App.counters = App.cable.subscriptions.create "CountersChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log(data)
    document.getElementById("counter "+data.id).innerHTML = data.value

  increment: ->
    @perform 'increment'
