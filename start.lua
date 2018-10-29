dofile("sudo.lua")
https = require("ssl.https")
JSON = dofile("./libs/JSON.lua")
_token = token or false
_sudo_id = sudo_add or false
_sudo_ch = sudo_ch or false
_force = force or false
function check()
  if _token then
    if _sudo_id then
      if sudo_ch then
        if _force then
          local RAMBO_file = io.open("sudo.lua", 'w')
          RAMBO_file:write("token = '" .._token.."'\n\nsudo_add = ".._sudo_id.."\n\nsudo_ch = ".._sudo_ch.."\n\nforce = ".._force)
          os.execute('cd .. && rm -fr .telegram-cli')
          os.execute('cd && rm -fr .telegram-cli')
          os.execute('./tg -s ./RAMBO.lua $@ --bot='.._token)
        else
          print("\27[31mهل تريد الاشتراك اجباري ؟ ارسل Y/y او N/n««[m")
          local answer = io.read():lower()
          if answer == 'y' then
            _force = 'true'
            check()
          elseif answer == 'n' then
            _force = 'false'
            check()
          else
            print("\27[31m»»يرجى الاجابة ب : Y/y او N/n فقط!27[m")
            check()
          end
        end
      else
        print("\27[31mيرجى ارسال قناة المطور««[m")
        local sudo_ch_send = io.read():gsub('@','')
        local url = 'https://api.telegram.org/bot' .._token.. '/getchat?chat_id=@'..sudo_ch_send
        local req = https.request(url)
        local data = JSON:decode(req)
        if data.ok == true then
          if data.result.type == 'channel' then
            local url = 'https://api.telegram.org/bot' .._token.. '/getChatAdministrators?chat_id=@'..sudo_ch_send
            local req = https.request(url)
            local data = JSON:decode(req)
            if data.ok == true then
              _sudo_ch = '@'..sudo_ch_send
              check()
            else
              print("\27[31mيجب رفع البوت مدير في القناة!!««[m")
              check()
            end
          else
            print("\27[31mهذا المعرف لا ينتمي لقناة!!««[m")
            check()
          end
        else
          print("\27[31mلم يتم ايجاد هذه القناة!! حاول مجددا««[m")
          check()
        end
      end
    else
      print("\27[31m✓ تم\27[m \27[1;34m»»ارسل ايدي المبرمج الاساسي««\27[m")
      local sudo_send  = io.read()
      _sudo_id = sudo_send
      check()
    end
  else
    print("\27[1;34m»»ارسل توكن البوت««\27[m")
    local token = io.read()
    local getme = "https://api.telegram.org/bot" .._token.. '/getme'
    local req = https.request(getme)
    local data = JSON:decode(req)
    if data.ok == true then
      _token = token
      check()
    else
      print("\27[31mالتوكن غير صحيح , اعد ارسال التوكن««\27[m")
      check()
    end
  end
end

os.execute('cd .. && rm -rf .telegram-cli')
check()
