Puppet::Type.newtype(:droplet) do
  @doc = 'Type representing a DigitalOcean Droplet.'

  newproperty(:ensure) do
    defaultto :present

    newvalue(:present) do
      provider.create unless provider.running?
    end
  end

  newproperty(:name, namevar: true) do
    desc 'The name of the droplet.'

    validate do |value|
      raise 'Droplet name should be a String' unless value.is_a? String
      raise 'Droplet must have a name' if value == ''
    end
  end
end
