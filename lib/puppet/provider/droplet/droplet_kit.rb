require 'puppet_x/puppetlabs/digitalocean.rb'

Puppet::Type.type(:droplet).provide(:droplet_kit, parent: PuppetX::Puppetlabs::Digitalocean) do
  confine feature: :digitalocean

  def initialize(value = {})
    super(value)
    @property_flush = {}
  end
end
