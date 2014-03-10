local lgi = require 'lgi'

local i3ipc = lgi.i3ipc
local GLib = lgi.GLib

function i3ipc.Connection._method:on(event, callback)
    self:message(i3ipc.MessageType.SUBSCRIBE, '["'..event..'"]')
    self['on_'..event]:connect(callback)
end

function i3ipc.Connection._method:main()
    local main_loop = GLib.MainLoop()
    self.on_ipc_shutdown:connect(function() main_loop:quit() end)
    main_loop:run()
end

i3ipc.Con._attribute = {
    nodes = { get = i3ipc.Con.get_nodes },
}

return i3ipc
