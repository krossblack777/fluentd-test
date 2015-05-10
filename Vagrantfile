# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.ssh.insert_key = false
  config.vm.box = "chef/centos-7.0"
  config.vm.define 'node1' do |c|
    c.vm.network "private_network", ip: "192.168.50.22"
    c.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
  config.vm.define 'node2' do |c|
    c.vm.network "private_network", ip: "192.168.50.23"
    c.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
  config.vm.define 'admin' do |c|
    c.vm.network "private_network", ip: "192.168.50.24"
    c.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
end
