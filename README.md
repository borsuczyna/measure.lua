# measure.lua
measure.lua is Multi Theft Auto script that attached to other script adds ability to record script performance

# Examples

## Recording on bind
```lua
bindKey('n', 'down', function()
    recordMeasure()
end)

bindKey('m', 'down', function()
    stopRecordingMeasure()
end)

bindKey('l', 'down', function()
    destroyMeasure()
end)
```

## Recording specific function
```lua
recordMeasure()
render()
stopRecordingMeasure()
```

# Limitations
For now it doesn't support recording serverside!

# How to use?
Add `measure.lua` at the end of your meta.xml file
```xml
<script src='measure.lua'/>
```

# Help
Discord: @borsuczyna

# Showcase
![gif](https://i.imgur.com/Y8ixuSJ.gif)
![image](https://i.imgur.com/aOpAgqM.png)
![image](https://i.imgur.com/V8HCXGX.png)