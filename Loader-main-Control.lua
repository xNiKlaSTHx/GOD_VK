local http_request = http_request;
if syn then
http_request = syn.request
elseif SENTINEL_V2 then
function http_request(tb)
return {
StatusCode = 200;
Body = request(tb.Url, tb.Method, (tb.Body or ''))
}
end
end

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"};
local hwid = "";

for i, v in next, hwid_list do
if decoded.headers[v] then
hwid = decoded.headers[v];
break
end
end

local a = syn.request({
    Url = "https://25.18.83.176/server1.php?key="..key.."&random="..hwid,
    Method = "GET"
})

print(a.Body)
if a.Body == syn.crypt.base64.encode("KEY PASS")..syn.crypt.base64.encode(syn.crypt.base64.encode(os.time()))..syn.crypt.base64.encode("HWID PASS")..syn.crypt.base64.encode(syn.crypt.base64.encode(os.time())) then
   loadstring(game:HttpGet("https://og-edition.000webhostapp.com/ScriptGODHUB_hrfy4sd8a0e94hgy1dus4d1j15gdct.lua"))()
elseif a.Body == syn.crypt.base64.encode("KEY PASS")..syn.crypt.base64.encode(syn.crypt.base64.encode(os.time()))..syn.crypt.base64.encode("INVAID HWID")..syn.crypt.base64.encode(syn.crypt.base64.encode(os.time())) then
 game.Players.LocalPlayer:Kick("INVAID HWID")
elseif a.Body == syn.crypt.base64.encode("INVAID KEY")..syn.crypt.base64.encode(syn.crypt.base64.encode(os.time()))..syn.crypt.base64.encode("INVAID HWID")..syn.crypt.base64.encode(syn.crypt.base64.encode(os.time())) then
    game.Players.LocalPlayer:Kick("INVAID KEY")
else
    game.Players.LocalPlayer:Kick("The database could not be connected")
end
