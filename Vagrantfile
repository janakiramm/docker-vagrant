
Vagrant.configure(2) do |config|
config.vm.box = "ubuntu/trusty64"
# Mentioning the SSH Username/Password:
config.ssh.username = "vagrant"
config.ssh.password = "vagrant"
# Begin Configuring
config.vm.define "docker" do|docker|
docker.vm.hostname = "docker" # Setting up hostname
docker.vm.network "private_network", ip: "192.168.205.10" # Setting up machine's IP Address
docker.vm.provision :shell, path: "script.sh" # Provisioning with script.sh
end
# End Configuring
end
