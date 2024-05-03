PROJECT WITH AUMENTED REALITY (AR) FEATURE ENABLED

##1. Local Development Setup (FIRSTS STEPS)
   - 1. Create a normal swift project as you with. 
   - 2. Go to Info.plist (if you have it on your main directory, otherwise go to your raget project and go to info section)
      a. Add permision for "Privacy - Camara Usage Description"
      b. add Permission for "Require Device Capabilities" for the funtionality AR, and this is typeof Array, so an arrow should appear. Clicking there you need to add
         * item0 = ARKit
         * item1 = armv7
   - 3. As we are going to use AR feature, we need to handle de object positions with a library (you may use whatever you want, this project will use FocusEntity)
      a. go to the browser and find for focusEntity swift library and find for the url to use on the package manager of xcode. 
      b. open pakage manager and paste that url and download/install the library (https://github.com/maxxfrazer/FocusEntity)
      c. this will install the dependency to our project