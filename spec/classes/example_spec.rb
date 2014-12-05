require 'spec_helper'

describe 'pdns::nameserver' do
  context 'RedHat' do
    describe "pdns::nameserver class without any parameters" do
      let(:params) {{ }}
      let(:facts) {{
        :osfamily => 'RedHat'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_class('pdns::nameserver::install').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::service').that_subscribes_to('pdns::nameserver::config') }

      it { should contain_service('pdns') }
      it { should contain_package('pdns').with_ensure('present') }
    end
  end

  context 'unsupported operating system' do
    describe 'pdns class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('pdns') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end

describe 'pdns::recursor' do
  context 'RedHat' do
    describe "pdns::recursor class without any parameters" do
      let(:params) {{ }}
      let(:facts) {{
        :osfamily => 'RedHat'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::recursor') }
      it { should contain_class('pdns::recursor::params') }
      it { should contain_class('pdns::recursor::install').that_comes_before('pdns::recursor::config') }
      it { should contain_class('pdns::recursor::config') }
      it { should contain_class('pdns::recursor::service').that_subscribes_to('pdns::recursor::config') }

      it { should contain_service('pdns-recursor') }
      it { should contain_package('pdns-recursor').with_ensure('present') }
    end
  end

  context 'unsupported operating system' do
    describe 'pdns class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('pdns-recursor') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end

describe 'pdns::nameserver' do
  context 'Debian' do
    describe "pdns::nameserver class without any parameters" do
      let(:params) {{ }}
      let(:facts) {{
        :osfamily => 'Debian'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::nameserver') }
      it { should contain_class('pdns::nameserver::params') }
      it { should contain_class('pdns::nameserver::install').that_comes_before('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::config') }
      it { should contain_class('pdns::nameserver::service').that_subscribes_to('pdns::nameserver::config') }

      it { should contain_service('pdns-server') }
      it { should contain_package('pdns-server').with_ensure('present') }
    end
  end

  context 'unsupported operating system' do
    describe 'pdns class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('pdns-server') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end

describe 'pdns::recursor' do
  context 'Debian' do
    describe "pdns::recursor class without any parameters" do
      let(:params) {{ }}
      let(:facts) {{
        :osfamily => 'Debian'
      }}

      it { should compile.with_all_deps }

      it { should contain_class('pdns::recursor') }
      it { should contain_class('pdns::recursor::params') }
      it { should contain_class('pdns::recursor::install').that_comes_before('pdns::recursor::config') }
      it { should contain_class('pdns::recursor::config') }
      it { should contain_class('pdns::recursor::service').that_subscribes_to('pdns::recursor::config') }

      it { should contain_service('pdns-recursor') }
      it { should contain_package('pdns-recursor').with_ensure('present') }
    end
  end

  context 'unsupported operating system' do
    describe 'pdns class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('pdns-recursor') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end