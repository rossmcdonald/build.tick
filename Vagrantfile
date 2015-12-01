# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  
  config.vm.provision "ansible" do |ansible|
    ansible.extra_vars = {
      is_vagrant: true,
      upload_to_s3: false
    }
    ansible.playbook = "build.yml"
  end
end
