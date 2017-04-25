# -*- mode: ruby -*-
# vi: set ft=ruby :

# This is a Ruby script, with all the capabilities of Ruby. The first two lines,
# or "modelines", set the syntax highlighting for emacs and vim.

# Specify a minimum Vagrant version everyone using this Vagrantfile must use.
Vagrant.require_version('>= 1.9.0')

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure('2') do |config|
  # q.v. https://www.vagrantup.com/docs/virtualbox/
  config.vm.provider :virtualbox do |vb, override|
    override.vm.box = 'ubuntu/trusty64'

    vb.cpus = 1
    vb.memory = 2 * 1024 # This is denominated in MB, so 2GB
  end

  # For documentation on using Chef in Vagrant, see:
  #   * https://www.vagrantup.com/docs/provisioning/chef_solo.html
  #   * https://www.vagrantup.com/docs/provisioning/chef_common.html
  config.vm.provision :chef_solo do |chef|
    # Vagrant will install and manage the Chef client.
    #chef.install = true       # Default value
    #chef.channel = :stable    # Default value
    #chef.version = :latest    # Default value

    basedir = 'devops/provisioning/chef'
    chef.cookbooks_path = "#{basedir}/cookbooks"
    chef.roles_path = "#{basedir}/roles"

    #chef.add_role "some_role"
    chef.add_recipe "acme::default"
    #chef.add_recipe "build-essential::default"
  end
end
