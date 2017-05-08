Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.hostname = "ethereum"
  config.vm.provision "shell", path: "do_provision.py"
end
