local a=request or syn and syn.request or http and http.request or nil;local b=a({Url='https://httpbin.org/get',Method='GET'}).Body;local c=game:GetService('HttpService'):JSONDecode(b)hwid="idk"hwid_list={"Syn-Fingerprint","Sw-Fingerprint","Krnl-Hwid"}for d,e in next,hwid_list do if c.headers[e]then hwid=c.headers[e]break end end;setclipboard(tostring(hwid))
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "CEOs Hub", -- Required
	Text = "Copied Hwid\nYou must be using Syn, Krnl or ScriptWare", -- Required
	Icon = "rbxassetid://1234567890" -- Optional
})
