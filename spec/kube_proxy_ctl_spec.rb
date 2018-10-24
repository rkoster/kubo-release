# frozen_string_literal: true

require 'rspec'
require 'spec_helper'

describe 'kube-proxy can set hostnameOverride' do
  let(:rendered_template) { compiled_template('kube-proxy', 'config/config.yml', {}, {}) }

  # Check that the config file has HOSTNAMEOVERRIDE so that start script can find
  # and replace it at runtime
  it 'kube-proxy config has HOSTNAMEOVERRIDE key word' do
    expect(rendered_template).to include('HOSTNAMEOVERRIDE')
  end
end
