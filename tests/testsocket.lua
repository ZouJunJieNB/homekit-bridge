local socket = require "socket"
local time = require "time"
local logger = log.getLogger("testsocket")

---Test socket.create() with valid parameters
for _, type in ipairs({"TCP", "UDP"}) do
    for _, domain in ipairs({"INET", "INET6"}) do
        local sock <close> = socket.create(type, domain)
    end
end

---Test socket.create() with invalid type
do
    local success = pcall(socket.create, nil, "INET")
    assert(success == false)
end

---Test socket.create() with invalid domain
do
    local success = pcall(socket.create, "TCP", nil)
    assert(success == false)
end

do
    local server = socket.create("UDP", "INET")
    server:bind("127.0.0.1", 8888)
    time.createTimer(function ()
        while true do
            local msg = server:recv(1024)
            print(msg)
        end
    end):start(0)
    local client <close> = socket.create("UDP", "INET")
    client:connect("127.0.0.1", 8888)
    while true do
        time.sleep(0)
        client:send("hello world")
    end
end
