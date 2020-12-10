class Node
  attr_accessor :coordinates, :parent

  def initialize(coordinates, parent = nil)
    @coordinates = coordinates
    @adjacent_nodes = []
    @parent = parent
  end

  def add_edge(adjacent_node)
    @adjacent_nodes << adjacent_node
  end
end
