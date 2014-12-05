require 'spec_helper'

describe 'pdns' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "pdns class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should compile.with_all_deps }

        it { should contain_class('pdns::params') }
        it { should contain_class('pdns::install').that_comes_before('pdns::config') }
        it { should contain_class('pdns::config') }
        it { should contain_class('pdns::service').that_subscribes_to('pdns::config') }

        it { should contain_service('pdns') }
        it { should contain_package('pdns').with_ensure('present') }
      end
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
