require 'spec_helper'

describe 'app::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe 'app:default' do
    it "httpd service is runnning" do
      expect(service 'httpd').to be_running
    end
  end
end
