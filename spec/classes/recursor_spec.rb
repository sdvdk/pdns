require 'spec_helper'

describe 'pdns::recursor' do
  context 'RedHat' do
    describe "Install without any parameters" do
      let(:params) {{ }}
      let(:facts) {{
        :kernel   => 'Linux',
        :osfamily => 'RedHat'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::recursor') }
      it { should contain_class('pdns::recursor::params') }
      it { should contain_anchor('pdns::recursor::start').that_comes_before('pdns::recursor::install') }
      it { should contain_class('pdns::recursor::install').that_comes_before('pdns::recursor::config') }
      it { should contain_class('pdns::recursor::config').that_comes_before('pdns::recursor::service') }
      it { should contain_class('pdns::recursor::service') }
      it { should contain_anchor('pdns::recursor::end') }

      it { should contain_service('pdns-recursor').with( {:ensure => 'running', :enable => true,} )}
      it { should contain_package('pdns-recursor').with_ensure('present') }
      it { should contain_file('/etc/pdns-recursor/recursor.conf').with_ensure('present') }
    end
  end

  context 'RedHat' do
    describe "Uninstall" do
      let(:params) { { :package_ensure => false } }
      let(:facts) {{
        :kernel   => 'Linux',
        :osfamily => 'RedHat'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::recursor') }
      it { should contain_class('pdns::recursor::params') }
      it { should contain_class('pdns::recursor::service').that_comes_before('pdns::recursor::config') }
      it { should contain_class('pdns::recursor::config').that_comes_before('pdns::recursor::install') }
      it { should contain_class('pdns::recursor::install') }

      it { should contain_package('pdns-recursor').with_ensure('absent') }
      it { should contain_file('/etc/pdns-recursor/recursor.conf').with_ensure('absent') }
      it { should contain_notify('Service Unavailable') }
    end
  end

  context 'RedHat' do
    describe "Service stopped" do
      let(:params) { { :service_ensure => false } }
      let(:facts) {{
        :kernel   => 'Linux',
        :osfamily => 'RedHat'
      }}

      it { should compile.with_all_deps }
      it { should contain_class('pdns::recursor') }
      it { should contain_class('pdns::recursor::params') }
      it { should contain_class('pdns::recursor::install').that_comes_before('pdns::recursor::config') }
      it { should contain_class('pdns::recursor::config').that_comes_before('pdns::recursor::service') }
      it { should contain_class('pdns::recursor::service') }

      it { should contain_service('pdns-recursor').with( {:ensure => 'stopped', :enable => false,} )}
      it { should contain_package('pdns-recursor').with_ensure('present') }
      it { should contain_file('/etc/pdns-recursor/recursor.conf').with_ensure('present') }
    end
  end

  context 'Debian' do
    describe "Install without any parameters" do
      let(:params) {{ }}
      let(:facts) {{
        :kernel   => 'Linux',
        :osfamily => 'Debian'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::recursor') }
      it { should contain_class('pdns::recursor::params') }
      it { should contain_anchor('pdns::recursor::start').that_comes_before('pdns::recursor::install') }
      it { should contain_class('pdns::recursor::install').that_comes_before('pdns::recursor::config') }
      it { should contain_class('pdns::recursor::config').that_comes_before('pdns::recursor::service') }
      it { should contain_class('pdns::recursor::service') }
      it { should contain_anchor('pdns::recursor::end') }

      it { should contain_service('pdns-recursor').with( {:ensure => 'running', :enable => true,} )}
      it { should contain_package('pdns-recursor').with_ensure('present') }
      it { should contain_file('/etc/powerdns/recursor.conf').with_ensure('present') }
    end
  end

  context 'Debian' do
    describe "Uninstall" do
      let(:params) { { :package_ensure => false } }
      let(:facts) {{
        :kernel   => 'Linux',
        :osfamily => 'Debian'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::recursor') }
      it { should contain_class('pdns::recursor::params') }
      it { should contain_class('pdns::recursor::service').that_comes_before('pdns::recursor::config') }
      it { should contain_class('pdns::recursor::config').that_comes_before('pdns::recursor::install') }
      it { should contain_class('pdns::recursor::install') }

      it { should contain_package('pdns-recursor').with_ensure('absent') }
      it { should contain_file('/etc/powerdns/recursor.conf').with_ensure('absent') }
      it { should contain_notify('Service Unavailable') }
    end
  end

  context 'Debian' do
    describe "Service stopped" do
      let(:params) { { :service_ensure => false } }
      let(:facts) {{
        :kernel   => 'Linux',
        :osfamily => 'Debian'
      }}

      it { should compile.with_all_deps }
      it { should contain_class('pdns::recursor') }
      it { should contain_class('pdns::recursor::params') }
      it { should contain_class('pdns::recursor::install').that_comes_before('pdns::recursor::config') }
      it { should contain_class('pdns::recursor::config').that_comes_before('pdns::recursor::service') }
      it { should contain_class('pdns::recursor::service') }

      it { should contain_service('pdns-recursor').with( {:ensure => 'stopped', :enable => false,} )}
      it { should contain_package('pdns-recursor').with_ensure('present') }
      it { should contain_file('/etc/powerdns/recursor.conf').with_ensure('present') }
    end
  end

end