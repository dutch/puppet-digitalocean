Puppet::Type.type(:droplet).provide(:droplet_kit, :parent => ) do
  def initialize(value={})
    super(value)
    @property_flush = {}
  end
end
