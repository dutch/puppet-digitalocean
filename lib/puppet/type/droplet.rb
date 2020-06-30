Puppet::Type.newtype(:droplet) do
  @doc = 'Type representing a DigitalOcean Droplet.'

  newproperty(:ensure) do
    newvalue(:present) do
      provider.create unless provider.running?
    end
  end
end
