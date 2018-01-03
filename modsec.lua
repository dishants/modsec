function main()
local fileHandle = assert(io.open('/home/ubuntu/requests.txt','a'))

fileHandle:write(m.getvar("REQUEST_METHOD"))

fileHandle:write(m.getvar("REQUEST_URI_RAW"))

fileHandle:write(m.getvar("REQUEST_BODY","urlDecodeUni"))

fileHandle:write("\n")
end
