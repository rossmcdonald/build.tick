# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "build-box"
  
  config.vm.provision "ansible" do |ansible|
    ansible.extra_vars = {
      is_vagrant: true
    }
    ansible.playbook = "build-influxdb.yml"
    # ansible.playbook = "build-telegraf.yml"
    # ansible.playbook = "build-kapacitor.yml"
    ansible.sudo = true
  end
end
