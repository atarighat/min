module Min
  module Nodes
    def self.NodeClass(*args)
      Struct.new(*args)
    end

    class Tree < NodeClass(:nodes); end
    class Block < NodeClass(:nodes); end
    class Call < NodeClass(:receiver, :message, :arguments); end
    class Assign < NodeClass(:var, :value); end
    
    class String < NodeClass(:value); end
    class Number < NodeClass(:value); end
    class False < NodeClass(:value); end
    class True < NodeClass(:value); end
    class Nil < NodeClass(:value); end
  end
end