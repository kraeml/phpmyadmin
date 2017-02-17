Vagrant.configure('2') do |config|
  config.vm.box = 'kraeml/xenial-64-de'
  config.vm.hostname = 'ansible-role-symfony2-ubuntu-trusty64'
  if Vagrant.has_plugin?("vagrant-vbguest") then
    config.vbguest.auto_update = false
  end

  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.synced_folder '.', '/vagrant/ansible-role-phpmyadmin'
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    # vb.gui = true

   # Customize the amount of memory on the VM:
    vb.memory = "1024"
    vb.customize ["modifyvm", :id, "--cpus", 2]
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "75"]
    vb.linked_clone = true if Vagrant::VERSION =~ /^1.8/ or Vagrant::VERSION =~ /^1.9/
  end

  config.vm.provision 'shell' do |s|
    s.keep_color = true
    s.path = 'tests/init.sh'
  end
end
