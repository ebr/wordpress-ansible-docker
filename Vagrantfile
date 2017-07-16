# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  ## If need to install python in vagrant box
  # config.vm.provision "python", type: "ansible" do |ansible|
  #   ansible.playbook = "python.yml"
  # end

  config.vm.provision "main", type: "ansible" do |ansible|
    ansible.playbook = "main.yml"
  end
end
