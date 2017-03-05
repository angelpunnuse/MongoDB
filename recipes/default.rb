template "/etc/yum.repos.d/mongodb.repo"  do
  variables(
    :baseurl => "http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/"
  )
end

# Install the MongoDB package.
package "mongodb-org" do
  action :install
end

# Start MongoDB.
# ensure that MongoDB will start following a system reboot
service "mongod" do
  action [:start, :enable]
end

