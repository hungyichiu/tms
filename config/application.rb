require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Tms
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    # setting Timezone
    config.time_zone = 'Taipei'

    #I18n setting
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**','*.{rb,yml}')]
    # 設定預設語系 zh or en
    config.i18n.default_locale = :"zh-TW"

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
