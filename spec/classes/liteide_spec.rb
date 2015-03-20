require 'spec_helper'

describe 'liteide' do
  it do
    should contain_class('liteide')
    should contain_package('LiteIDE').with({
      :source   => '/tmp/LiteIDE.app',
      :provider => 'appdmg',
    })
  end
end
