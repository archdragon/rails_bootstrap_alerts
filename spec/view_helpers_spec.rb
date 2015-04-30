require 'spec_helper'

class ViewHelpersTester
  extend RailsBootstrapAlerts::ViewHelpers
end

describe RailsBootstrapAlerts::ViewHelpers do
  describe '#flash_class' do
    context 'With recognized flash message names' do
      before do
        @alert_names = ['notice', 'success', 'error', 'alert']
      end
      it 'Returns a class name' do
        @alert_names.each do |alert_name|
          class_name = ViewHelpersTester.flash_class(alert_name)
          expect(class_name.length).to be > 1
        end
      end
    end
    context 'With unrecognized flash message name' do
      it 'returns an empty string' do
        class_name = ViewHelpersTester.flash_class('Something random')
        expect(class_name).to eq('')
      end
    end
  end
end
