require 'rails_bootstrap_alerts/view_helpers'
module RailsBootstrapAlerts
  class Railtie < Rails::Railtie
    initializer "rails_bootstrap_alerts.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end

