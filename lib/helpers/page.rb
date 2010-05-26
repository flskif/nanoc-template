module PageHelper
  def page(id)
    @items.find { |i| i.identifier == "/#{id}/" }
  end
  
  def root
    @items.find { |i| i.identifier == "/" }
  end
end