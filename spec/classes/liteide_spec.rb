require 'spec_helper'

describe 'liteide' do
  it do
    should contain_package('LiteIDE').with({
      :provider => 'compressed_app',
    })
  end
end
