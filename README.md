# nvim-animator

## Usage

Print values 0 to 1000 to maintain 30fps over 5000ms.

```lua
local value_animator = require('value_animator')
local anim = value_animator:new()
-- anim:animate(start_val, finish_val, duration_ms, callback)
anim:animate(0, 1000, 5000, function(val)
    print(val)
end)
```

Output:
```txt
6.6
13.2                                                                                                                
19.8                                                                                                                
26.4                                                                                                                
33                                                                                                                  
39.6                                                                                                                
46.2                                                                                                                
52.8                                                                                                                
59.4                                                                                                                
66                                                                                                                  
72.6                                                                                                                
79.2                                                                                                                
85.8                                                                                                                
92.4                                                                                                                
99                                                                                                                  
105.6                                                                                                               
112.2                                                                                                               
118.8                                                                                                               
125.4
...
```
