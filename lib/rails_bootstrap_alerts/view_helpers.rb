module RailsBootstrapAlerts
  module ViewHelpers
    ALERTS = {
      'notice'  => 'alert alert-info',
      'success' => 'alert alert-success',
      'error'   => 'alert alert-danger',
      'alert'   => 'alert alert-danger'
    }

    def flash_class(flash_name)
      ALERTS.fetch(flash_name, '')
    end
  end
end
