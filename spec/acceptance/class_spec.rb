require 'spec_helper_acceptance'

describe 'pdns::nameserver' do

  context 'default parameters' do
    let(:facts) {{
      :osfamily => 'Debian'
    }}
    # Using puppet_apply as a helper
    it 'should work idempotently with no errors' do
      pp = <<-EOS
      class { 'pdns': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_failures  => true)
    end

    describe package('pdns-server') do
      it { should be_installed }
    end

    describe service('pdns') do
      it { should be_enabled }
      it { should be_running }
    end

    describe port(53) do
      it { should be_listening }
    end

    describe file('/var/pdns') do
      it { should be_directory }
    end
    
  end
end

describe 'pdns::recursor' do

  context 'default parameters' do
    let(:facts) {{
      :osfamily => 'Debian'
    }}
    # Using puppet_apply as a helper
    it 'should work idempotently with no errors' do
      pp = <<-EOS
      class { 'pdns': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_failures  => true)
    end

    describe package('pdns-recursor') do
      it { should be_installed }
    end

    describe service('pdns-recursor') do
      it { should be_enabled }
      #it { should be_running }
    end
    
    describe process("pdns_recursor") do
      it { should be_running }
    end

    describe port(53) do
      it { should be_listening }
    end

    describe file('/var/pdns') do
      it { should be_directory }
    end
  end
end
