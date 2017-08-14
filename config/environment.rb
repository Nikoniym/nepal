# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

config.gem "yandex_metrika", :lib => "yandex/metrika", :source => "http://gemcutter.org"

if defined?Yandex::Metrika
  Yandex::Metrika.counter_id = '45616473'
end