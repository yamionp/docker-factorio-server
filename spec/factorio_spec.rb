require 'spec_helper'

describe file('/factorio/bin/x64/factorio') do
  it { should be_file }
end

describe file('/factorio/start.sh') do
  it { should be_file }
end

describe port(34197) do
  it { should be_listening }
end
