Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1204
    vb.cpus = 2
    vb.name = "vagrant-ansible"
  end
  
  config.vm.box = "hashicorp/bionic64"
  config.vm.hostname = "vagrant-ansible"
  config.vm.network "forwarded_port", guest: 80, host: 8090
  config.vm.network "public_network", ip: "192.168.0.77", bridge: "enp2s0"
  config.vm.synced_folder "site/", "/var/www/html"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.ask_vault_pass = true
  end
end
