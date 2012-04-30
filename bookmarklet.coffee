if !window.Bookmarklet?
  window.Bookmarklet = 
    popup: bookmarklet_popup
    init: ->
      v = "1.3.2"
      if !jQuery? || window.jQuery.fn.jquery < v
        done = false
        script = document.createElement("script")
        script.src = "http://ajax.googleapis.com/ajax/libs/jquery/#{v}/jquery.min.js"
        script.onload = script.onreadystatechange = ->
          if (!done && (!this.readyState || this.readyState == "loaded" || this.readyState == "complete"))
            done = true
            window.Bookmarklet.runBookmarklet()
        document.getElementsByTagName("head")[0].appendChild(script)
      else
        window.Bookmarklet.runBookmarklet()

    runBookmarklet: ->
      # custom code goes here
      true

window.Bookmarklet.init()
