== Usage ==

In bookmarklet.coffee, replace the contents of runBookmarklet with your code. Edit at will. 
The initialization will load jQuery onto the page if it's missing. 
A global search and replace for window.Bookmarklet to put it in a more meaningful namespace like "window.YourProjectName" would be a nice touch.

Compile the coffeescript with '''coffee -c bookmarklet.coffee''' to get bookmarklet.js.

Take the link from install_bookmarklet.html and put it on your page for people to install the bookmarklet. Replace the placeholder url
with one that points to where you're hosting bookmarklet.js.


Thanks to http://coding.smashingmagazine.com/2010/05/23/make-your-own-bookmarklets-with-jquery/