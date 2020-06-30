Puppet::Type.type(:droplet).provide(:droplet_kit, parent: PuppetX::Puppetlabs::Digitalocean) do
  def initialize(value = {})
    super(value)
    @property_flush = {}
  end
end
