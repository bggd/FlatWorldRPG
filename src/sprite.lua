local Sprite = {}

local Node = require("node")

function Sprite.create()
  local obj = Node.create()

  obj.image = nil
  obj.centered = true
  obj.flip_h = false
  obj.flip_v = false

  return obj
end

function Sprite.setImage(spr, image)
  assert(image:typeOf("Image"))

  spr.image = image
end

return Sprite
