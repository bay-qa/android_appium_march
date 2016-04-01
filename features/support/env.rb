require "cucumber"
require "appium_lib"

APP_PATH = File.join(File.dirname(__FILE__), "..","..", "app-alpha-debug.apk")

def caps
  { caps:
         { deviceName: "Android 5.1.1",
           platformName: "Android",
           app: APP_PATH,
           appPackage:"org.wikipedia.alpha",
           appActivity:"org.wikipedia.page.PageActivity",
           newCommandTimeout:"3600"},
    appium_lib: { wait: 20,
                  debug:false}}
end

Appium::Driver.new(caps)
