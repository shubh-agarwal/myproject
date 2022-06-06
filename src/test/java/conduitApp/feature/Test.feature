Feature: to demo the UI automation


Scenario:
    Given driver 'https://katalon-demo-cura.herokuapp.com/'
    When submit().click('#btn-make-appointment')
    Then match driver.url == 'https://katalon-demo-cura.herokuapp.com/profile.php#login'
    # * screenshot()
    * def bytes = screenshot(false)
    * def file = karate.write(bytes, 'users/test.png')
    * print 'screenshot saved to:', file

