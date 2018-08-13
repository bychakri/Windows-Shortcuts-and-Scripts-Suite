Capslock & e::openChrome("https://elonics.org/","Profile 1")
Capslock & s::
Sdat := GuiCreateTextBox("Enter the Search Phrase for DuckDuckGo")
if Sdat
 openChrome("https://duckduckgo.com/?q=" . Sdat . "&kz=1&kp=-2&kl=us-en","Default")
return
Capslock & r::
Sdat := GuiCreateTextBox("Enter the Search Phrase for DuckDuckGo")
if Sdat
 openChrome("https://duckduckgo.com/?q=" . Sdat . "&kz=1&kp=-2&kl=us-en","Profile 1")
return
Capslock & i::
Sdat := GuiCreateTextBox("Enter the Search Phrase for DuckDuckGo")
if Sdat
 openChrome("https://www.google.com/search?tbm=isch&q=" . Sdat . "","Profile 1")
return
Capslock & d::run "C:\Shortcuts\Microsoft-Edge.lnk" GuiCreateTextBox("Enter the Search Phrase for DuckDuckGo")