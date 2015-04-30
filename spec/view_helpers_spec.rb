require 'spec_helper'

class ViewHelpersTester
  extend RailsBootstrapAlerts::ViewHelpers
end

describe RailsBootstrapAlerts::ViewHelpers do
  describe '#flash_class' do
    it 'Returns a translated class name' do
      class_name = ViewHelpersTester.flash_class('notice')
      expect(class_name).to eq('alert alert-info')
    end
    context 'With unrecognized flash message name' do
      it 'returns an empty string' do
        class_name = ViewHelpersTester.flash_class('Something random')
        expect(class_name).to eq('')
      end
    end
  end
end
