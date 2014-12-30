require 'spec_helper'

describe 'pdns::nameserver' do
  context 'RedHat' do
    describe "Install without any parameters" do
      let(:params) {{ }}
      let(:facts) {{
        :kernel   => 'Linux',
        :osfamily => 'RedHat'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_anchor('pdns::nameserver::start').that_comes_before('pdns::nameserver::install') }
      it { should contain_class('pdns::nameserver::install').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::service') }
      it { should contain_anchor('pdns::nameserver::end') }

      it { should contain_service('pdns').with( {:ensure => 'running', :enable => true,} )}
      it { should contain_package('pdns').with_ensure('present') }
      it { should contain_package('sqlite3').with_ensure('installed') }
      it { should contain_package('pdns-backend-sqlite3').with_ensure('present') }
      it { should contain_file('/etc/pdns/pdns.conf').with_ensure('present') }
      it { should contain_file('/var/pdns').with_ensure('directory') }
      it { should contain_file('/var/pdns/schema.sql').with_ensure('present') }
      it { should contain_exec('built-sqlite-db').with_command('sqlite3 /var/pdns/powerdns.sqlite3 < /var/pdns/schema.sql') }
      it { should contain_file('/var/pdns/powerdns.sqlite3').with_ensure('present') }
    end
  end

  context 'RedHat' do
    describe "Install with mysql backend" do
      let(:params) {{ :backend => 'mysql' }}
      let(:facts) {{
        :kernel   => 'Linux',
        :osfamily => 'RedHat'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_anchor('pdns::nameserver::start').that_comes_before('pdns::nameserver::install') }
      it { should contain_class('pdns::nameserver::install').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::service') }
      it { should contain_anchor('pdns::nameserver::end') }

      it { should contain_service('pdns').with( {:ensure => 'running', :enable => true,} )}
      it { should contain_package('pdns').with_ensure('present') }
      it { should contain_package('pdns-backend-mysql').with_ensure('present') }
      it { should contain_file('/etc/pdns/pdns.conf').with_ensure('present') }
      it { should contain_file('/var/pdns').with_ensure('directory') }
      it { should contain_file('/var/pdns/schema.sql').with_ensure('present') }
    end
  end

  context 'RedHat' do
    describe "Install with postgresql backend" do
      let(:params) { { :backend => 'postgresql' } }
      let(:facts) {{
        :kernel   => 'Linux',
        :osfamily => 'RedHat'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_anchor('pdns::nameserver::start').that_comes_before('pdns::nameserver::install') }
      it { should contain_class('pdns::nameserver::install').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::service') }
      it { should contain_anchor('pdns::nameserver::end') }

      it { should contain_service('pdns').with( {:ensure => 'running', :enable => true,} )}
      it { should contain_package('pdns').with_ensure('present') }
      it { should contain_package('pdns-backend-postgresql').with_ensure('present') }
      it { should contain_file('/etc/pdns/pdns.conf').with_ensure('present') }
      it { should contain_file('/var/pdns').with_ensure('directory') }
      it { should contain_file('/var/pdns/schema.sql').with_ensure('present') }
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

      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_class('pdns::nameserver::service').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config').that_comes_before('pdns::nameserver::install') }
      it { should contain_class('pdns::nameserver::install') }

      it { should contain_package('pdns').with_ensure('absent') }
      it { should contain_file('/etc/pdns/pdns.conf').with_ensure('absent') }
      it { should contain_file('/var/pdns').with_ensure('absent') }
      it { should contain_file('/var/pdns/schema.sql').with_ensure('absent') }
      it { should contain_file('/var/pdns/powerdns.sqlite3').with_ensure('absent') }
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
      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_class('pdns::nameserver::install').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::service') }

      it { should contain_service('pdns').with( {:ensure => 'stopped', :enable => false,} )}
      it { should contain_package('pdns').with_ensure('present') }
      it { should contain_file('/etc/pdns/pdns.conf').with_ensure('present') }
      it { should contain_file('/var/pdns').with_ensure('directory') }
      it { should contain_file('/var/pdns/schema.sql').with_ensure('present') }
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

      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_anchor('pdns::nameserver::start').that_comes_before('pdns::nameserver::install') }
      it { should contain_class('pdns::nameserver::install').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::service') }
      it { should contain_anchor('pdns::nameserver::end') }

      it { should contain_service('pdns').with( {:ensure => 'running', :enable => true,} )}
      it { should contain_package('pdns-server').with_ensure('present') }
      it { should contain_package('sqlite3').with_ensure('installed') }
      it { should contain_package('pdns-backend-sqlite3').with_ensure('present') }
      it { should contain_file('/etc/powerdns/pdns.conf').with_ensure('present') }
      it { should contain_file('/var/pdns').with_ensure('directory') }
      it { should contain_file('/var/pdns/schema.sql').with_ensure('present') }
      it { should contain_exec('built-sqlite-db').with_command('sqlite3 /var/pdns/powerdns.sqlite3 < /var/pdns/schema.sql') }
      it { should contain_file('/var/pdns/powerdns.sqlite3').with_ensure('present') }
    end
  end

  context 'Debian' do
    describe "Install with mysql backend" do
      let(:params) {{ :backend => 'mysql' }}
      let(:facts) {{
        :kernel   => 'Linux',
        :osfamily => 'Debian'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_anchor('pdns::nameserver::start').that_comes_before('pdns::nameserver::install') }
      it { should contain_class('pdns::nameserver::install').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::service') }
      it { should contain_anchor('pdns::nameserver::end') }

      it { should contain_service('pdns').with( {:ensure => 'running', :enable => true,} )}
      it { should contain_package('pdns-server').with_ensure('present') }
      it { should contain_package('pdns-backend-mysql').with_ensure('present') }
      it { should contain_file('/etc/powerdns/pdns.conf').with_ensure('present') }
      it { should contain_file('/var/pdns').with_ensure('directory') }
      it { should contain_file('/var/pdns/schema.sql').with_ensure('present') }
    end
  end

  context 'Debian' do
    describe "Install with postgresql backend" do
      let(:params) { { :backend => 'postgresql' } }
      let(:facts) {{
        :kernel   => 'Linux',
        :osfamily => 'Debian'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_anchor('pdns::nameserver::start').that_comes_before('pdns::nameserver::install') }
      it { should contain_class('pdns::nameserver::install').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::service') }
      it { should contain_anchor('pdns::nameserver::end') }

      it { should contain_service('pdns').with( {:ensure => 'running', :enable => true,} )}
      it { should contain_package('pdns-server').with_ensure('present') }
      it { should contain_package('pdns-backend-postgresql').with_ensure('present') }
      it { should contain_file('/etc/powerdns/pdns.conf').with_ensure('present') }
      it { should contain_file('/var/pdns').with_ensure('directory') }
      it { should contain_file('/var/pdns/schema.sql').with_ensure('present') }
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

      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_class('pdns::nameserver::service').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config').that_comes_before('pdns::nameserver::install') }
      it { should contain_class('pdns::nameserver::install') }

      it { should contain_package('pdns-server').with_ensure('absent') }
      it { should contain_file('/etc/powerdns/pdns.conf').with_ensure('absent') }
      it { should contain_file('/var/pdns').with_ensure('absent') }
      it { should contain_file('/var/pdns/schema.sql').with_ensure('absent') }
      it { should contain_file('/var/pdns/powerdns.sqlite3').with_ensure('absent') }
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
      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_class('pdns::nameserver::install').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::service') }

      it { should contain_service('pdns').with( {:ensure => 'stopped', :enable => false,} )}
      it { should contain_package('pdns-server').with_ensure('present') }
      it { should contain_file('/etc/powerdns/pdns.conf').with_ensure('present') }
      it { should contain_file('/var/pdns').with_ensure('directory') }
      it { should contain_file('/var/pdns/schema.sql').with_ensure('present') }
    end
  end

end