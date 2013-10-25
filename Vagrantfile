Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.synced_folder ".", "/home/www-data/application", owner: "www-data", group: "www-data"
  config.vm.network :forwarded_port, host: 4567, guest: 80
  config.vm.provision "puppet" do |puppet|
	puppet.manifests_path = "puppet"
	puppet.manifest_file	= "default.pp"
	puppet.options = "--verbose"
	puppet.module_path = "puppet/modules"
  end
end
