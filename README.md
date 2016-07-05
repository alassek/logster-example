# Logster + Silent Assets bug

Steps to reproduce:

- run `bundle install`, then `rails s` from command line
- visit http://localhost:3000 in a browser
- you should see a NoMethodError exception for Logster::Logger#silence

This problem is triggered by `config.assets.quiet = true` in the application config.

I can workaround this bug by adding this to `config/initializers/logster.rb`:

    Logster::Logger.include LoggerSilence

However this just causes it to fail with a different NoMethodError: `Logster::Logger#local_level=`
