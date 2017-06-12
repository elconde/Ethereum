Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-8.7"
  config.vm.hostname = "ethereum"
  config.vm.provision "shell", path: "do_provision.py"
end
