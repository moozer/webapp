# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "deb8-base"
  config.vm.synced_folder ".", "/vagrant", type: "nfs", nfs_version: 4, nfs_udp: false

  config.vm.provision "shell",
    inline: 'sh /vagrant/setAptProxy.sh'

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "wordpress.yml"
  end


end
