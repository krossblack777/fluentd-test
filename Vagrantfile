# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.ssh.insert_key = false
  config.vm.define 'centos' do |c|
    c.vm.box = "chef/centos-7.0"
    c.vm.network "private_network", ip: "192.168.50.12"
    c.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
end
