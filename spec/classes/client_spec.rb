require 'spec_helper'

describe 'jenkins::client' do
  context 'on Ubuntu 12.04 (Precise)' do
    let(:facts) { { 
      :lsbdistcodename => 'precise',
      :lsbdistrelease  => '12.04',
      :operatingsystem => 'Ubuntu',
    } }

    it do
      should contain_file('/etc/default/jenkins-slave').with({
        'ensure' => 'file',
        'group'  => 'root',
        'mode'   => '0644',
        'owner'  => 'root',
      })
    end

    it do
      should contain_file('/var/lib/jenkins').with({
        'ensure' => 'directory',
        'group'  => 'jenkins',
        'mode'   => '0644',
        'owner'  => 'jenkins',
      })
    end

    it do
      should contain_package('jenkins-slave').with_ensure('present')
    end

    it do
      should contain_service('jenkins-slave').with({
        'ensure'     => 'running',
        'enable'     => true,
        'hasstatus'  => true,
        'hasrestart' => true,
      })
    end
  end
end

# vim:sw=2:ts=2:expandtab:textwidth=79
