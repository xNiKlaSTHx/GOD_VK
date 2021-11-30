
------- script -------

function scriptkuyrai()
   print("GOD HUB NO 1") 
end

----------------------

local server = syn.request({
    Url = "http://25.18.83.176/server.php?key=".._G.Key,
    Method = "GET"
})

local decode = syn_crypt_b64_decode(server.Body)

if decode == "" then
    print("Invaild Key")
elseif decode == "Invalid Key" then
      print("Invaild Key") 
elseif decode == "Update Hwid" then
    print("Update Hwid")
elseif decode == "Invalid HWID" then
    print("Invalid HWID")
elseif decode == "You Are Got Blacklist" then
   print("You Are Got Blacklist")
elseif decode == "Whitelist" then
    scriptkuyrai()
end
