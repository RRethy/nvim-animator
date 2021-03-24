# nvim-animator

## Usage

```lua
local value_animator = require('value_animator')
local anim = value_animator:new()
-- anim:animate(start_val, finish_val, duration_ms, callback)
anim:animate(0, 1000, 5000, function(val)
    print(val)
end)
```
