local Node = {}
local Vector3 = require("gmath.vector3")

function Node.create()
  local obj = {
    parent = nil,
    children = {},

    -- properties
    position = Vector3.zero(),

    -- callbacks
    onReady = nil,
    onProcess = nil
  }
  return obj
end

function Node.setParent(node, parent)
  assert(node ~= parent)
  assert(parent.parent ~= node)

  node.parent = parent
end

function Node.addChild(node, child)
  table.insert(node.children, child)
  Node.setParent(child, node)
end

return Node
