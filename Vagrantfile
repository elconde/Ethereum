Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.3"
  config.vm.hostname = "ethereum"
  config.vm.provision "shell", path: "do_provision.py"
end
