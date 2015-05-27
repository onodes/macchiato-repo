require 'spec_helper'

describe 'app::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  it "httpd service is running" do
    expect(service 'httpd').to be_running
  end
end

describe file('/var/www/html/index.html') do
  it { should contain('Hello, World')}
end
