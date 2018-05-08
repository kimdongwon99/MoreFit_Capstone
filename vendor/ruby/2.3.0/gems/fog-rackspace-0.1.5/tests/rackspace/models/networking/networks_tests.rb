Shindo.tests('Fog::Rackspace::Networking | networks', ['rackspace']) do
  service = Fog::Rackspace::Networking.new

  options = {
    :label => "fog_network_#{Time.now.to_i.to_s}",
    :cidr => '192.168.0.0/24'
  }

  collection_tests(service.networks, options, true)
end
