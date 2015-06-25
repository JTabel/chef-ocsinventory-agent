require_relative '../spec_helper'

describe 'ocsinventory::default' do
  describe 'Ubuntu 14.04' do
    let(:chef_run) do
      env_options = { platform: 'ubuntu', version: '14.04' }
      ChefSpec::SoloRunner.new(env_options).converge(described_recipe)
    end

    it 'install ocsinventory agent' do
      expect(chef_run).to install_package('ocsinventory-agent')
    end

    it 'create ocsinventory-agent template' do
      expect(chef_run).to create_template('/etc/ocsinventory/ocsinventory-agent.cfg')
    end
  end
end
