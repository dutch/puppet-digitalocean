Puppet::Type.newtype(:droplet) do
  @doc = 'Type representing a DigitalOcean Droplet.'

  newproperty(:ensure) do
    desc 'Specifies the basic state of the droplet'
    defaultto :present

    newvalue(:present) do
      provider.create unless provider.running?
    end
  end
end
