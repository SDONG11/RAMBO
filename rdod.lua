--[[
BY : RAMBO_SYR
Channel Files : https://t.me/TH3VICTORY
]]
local function keko_RAMBO(data)
local msg = data.message_
redis = (loadfile "./libs/redis.lua")()
database = Redis.connect('127.0.0.1', 6379)
sudos = dofile('sudo.lua')
https = require("ssl.https")
bot_id_keko = {string.match(token, "^(%d+)(:)(.*)")}
bot_id = tonumber(bot_id_keko[1])
JSON = (loadfile  "./libs/dkjson.lua")()
local function send(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode)
local TextParseMode = {ID = "TextParseModeMarkdown"}
  tdcli_function ({
  ID = "SendMessage",
  chat_id_ = chat_id,
  reply_to_message_id_ = reply_to_message_id,
  disable_notification_ = disable_notification,
  from_background_ = 1,
  reply_markup_ = nil,
  input_message_content_ = {
  ID = "InputMessageText",
  text_ = text,
  disable_web_page_preview_ = disable_web_page_preview,
  clear_draft_ = 0,
  entities_ = {},
  parse_mode_ = TextParseMode,
  },
  }, dl_cb, nil)
  end
  function is_owner(msg)
user_id = msg.sender_user_id_
chat_id = msg.chat_id_
local var = false
local admin = database:sismember('RAMBO:'..bot_id..'admins:', user_id)  
local owner = database:sismember('RAMBO:'..bot_id..'owners:'..chat_id, user_id)
local creator = database:sismember('RAMBO:'..bot_id..'creator:'..chat_id, user_id)  
if owner then var = true
end if admin then
var = true end if creator then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
local keko_add_sudo = redis:get('RAMBO:'..bot_id..'sudoo'..user_id..'')
if keko_add_sudo then var = true end
return var
end
local msg = data.message_
text = msg.content_.text_
if not database:get('RAMBO:'..bot_id..'rep:mute'..msg.chat_id_) then
if text == 'هلو' then
rami = "• هَٰہۧـﮧﮧلْٰاَٰوٍّ໑اَٰتّٰ 🌝☄ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end

if text == 'رامبو' then
rami = "• نٍٰـعٍِّـﮧﮧمٍٰ ﺣـِۢـۧبِٰـِۢـِۢعِٰـ{🙇🏻‍♂💓}ـۧمِٰـِۢريِٰ  تّٰفِٰـہضلْٰ 🍁🌛ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'شلونكم' then
rami = "• تّٰمٍٰـﮧاَٰمٍٰ وٍّاَٰنٍٰتّٰـہهَٰہۧ 😽⚡️ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'شلونك' then
rami = "• اَٰلْٰـحٌٰمٍٰـﮧﮧدِٰاَٰلْٰلْٰهَٰہۧ وٍّ୭اَٰنٍٰتّٰـهَٰہۧ 😼💛ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'تمام' then
rami = "• دِٰوٍّ൭مٍٰ يَٰـﮧﮧاَٰرِٰبٌِٰ 😻🌪ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'هلاو' then
rami = "• هَٰہۧـہ୪وٍّ୭اَٰتّٰ حٌٰبٌِٰـﮧيَٰ 🤗🌟ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == '😐' then
rami = "• شَُـبٌِٰيَٰـكٍٰ صُِـﮧﮧاَٰفِٰنٍٰ عٍِّ خّٰاَٰلْٰتّٰـہكٍٰ😹🖤ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'هاي' then
rami = "• هَٰہۧـاَٰيَٰـﮧﮧاَٰتّٰ يَٰـرِٰوٍّحٌٰـہيَٰ 🙋🏼‍♂💙ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'بوت' then
rami = "• أسـٰٖـ◯ـ💫ـ◯ـٰٖمہي رامبو 🌚💫ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'اريد اكبل' then
rami = "• شَُـوٍّ໑فِٰلْٰيَٰ وٍّيَٰـاَٰكٍٰ حٌٰدِٰيَٰـہقٍٰهَٰہۧ وٍّدِٰاَٰيَٰـﮧحٌٰ رِٰسٌٍمٍٰـہيَٰ😾😹💜ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'لتزحف' then
rami = "• دِٰعٍِّـوٍّ໑فِٰهَٰہۧ زًَاَٰحٌٰـﮧفِٰ عٍِّ خّٰاَٰلْٰـتّٰكٍٰ خّٰـلْٰيَٰ يَٰسٌٍـہتّٰفِٰاَٰدِٰ😾🌈ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'كلخرا' then
rami = "• خّٰـﮧرِٰاَٰ يٰعبيٌٍ حٌٰلْٰقٍٰـﮧكٍٰ يَٰاَٰخّٰـﮧرِٰاَٰاَٰ💩ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'زاحف' then
rami = "• زًَاَٰحٌٰـﮧفِٰ عٍِّ اَٰخّٰتّٰـﮧكٍٰ؟ قضيَٰـﮧتّٰ عٍِّمٍٰرِٰكٍٰ جًِّرِٰجًِّـﮧفِٰ😾😹ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'دي' then
rami = "• خّٰلْٰيَٰنٍٰـﮧيَٰ اَٰحٌٰبٌِٰـﮧكٍٰ 😾ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'فرخ' then
rami = "• وٍّيَٰنٍٰـﮧهَٰہۧ؟ خلينيّٰ اَٰحٌٰظـﮧرِٰهَٰہۧ 😾😹ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'تعالي خاص' then
rami = "• اَٰهَٰہۧـﮧوٍّ໑ ضـﮧلْٰ ضـﮧلْٰ سٌٍـﮧاَٰحٌٰفِٰ كٍٰبٌِٰـﮧرِٰ طَُِمٍٰـہكٍٰ😗😂💚ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'اكرهك' then
rami = "•دِٰيَٰلْٰـﮧهَٰہۧ شَُـﮧوٍّ୭نٍٰ اَٰطَُِيَٰـقٍٰكٍٰ نٍٰـيَٰ 🙎🏼‍♂🖤ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'احبك' then
rami = "•حٌٰبٌِٰيَٰبٌِٰـﮧيَٰ وٍّنٍٰـﮧيَٰ هَٰہۧــمٍٰ😻👅ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'باي' then
rami = "• وٍّيَٰـﮧنٍٰ رِٰاَٰيَٰـہحٌٰ خّٰلْٰيَٰنٍٰـﮧهَٰہۧ مٍٰتّٰوٍّنٍٰسٌٍيَٰـﮧنٍٰ🙁💔ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'واقف' then
rami = "• بٌِٰنٍٰلْٰخّٰـﮧرِٰاَٰ وٍّيَٰـﮧنٍٰ وٍّاَٰقـﮧفِٰ😐😒ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'وين المدير' then
rami = "• لْٰيَٰـﮧشَُ شَُتّٰـﮧرِٰيَٰدِٰ🤔ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'انجب' then
rami = "• صُِـﮧاَٰرِٰ سٌٍتّٰـﮧاَٰدِٰيَٰ🐸❤️ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'تحبني' then
rami = "• مٍٰـﮧاَٰدِٰرِٰيَٰ اَٰفِٰكٍٰـﮧرِٰ🙁😹ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == '🌚' then
rami = "• فِٰـﮧدِٰيَٰتّٰ صُِخّٰـﮧاَٰمٍٰكٍٰ🙊👄ֆ "
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == '🙄' then
rami = "• نٍٰـہزًَلْٰ عٍِّيَٰـنٍٰكٍٰ عٍِّيَٰـﮧبٌِٰ🌚😹ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == '😒' then
rami = "• شَُبٌِٰيَٰـﮧكٍٰ قٍٰاَٰلْٰـﮧبٌِٰ خّٰلْٰقٍٰتّٰـﮧكٍٰ😟🐈ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == '😳' then
rami = "• هَٰہۧـاَٰ بٌِٰسٌٍ لْٰاَٰ شَُفِٰـﮧتّٰ عٍِّمٍٰتّٰـﮧكٍٰ اَٰلْٰعٍِّـﮧوٍّ໑بٌِٰهَٰہۧ😐😹ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == '🙁' then
rami = "• تّٰعٍِّـﮧاَٰلْٰ اَٰشَُكٍٰيَٰلْٰـﮧيَٰ هَٰہۧمٍٰوٍّمٍٰـﮧكٍٰ لْٰيَٰـشَُ • ضاَٰيَٰـﮧجًِّ🙁💔ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == '🚶💔' then
rami = "• تّٰعٍِّـﮧاَٰلْٰ اَٰشَُكٍٰيَٰلْٰـﮧيَٰ هَٰہۧمٍٰوٍّمٍٰـﮧكٍٰ لْٰيَٰـشَُ • ضاَٰيَٰـﮧجًِّ🙁💔ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == '🙂' then
rami = "• ثِْْكٍٰيَٰـﮧلْٰ نٍٰهَٰہۧنٍٰهَٰہۧنٍٰهَٰہۧنٍٰهَٰہۧ🐛ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == '🌝' then
rami = "• مٍٰنٍٰـﮧوٍّ໑رِٰ حٌٰبٌِٰـعٍِّمٍٰـہرِٰيَٰ😽💚ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'صباحو' then
rami = "• صُِبٌِٰاَٰحٌٰـہكٍٰ عٍِّسٌٍـہلْٰ يَٰعٍِّسٌٍـﮧلْٰ😼🤞ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'صباح الخير' then
rami = "• صُِبٌِٰاَٰحٌٰـہكٍٰ عٍِّسٌٍـہلْٰ يَٰعٍِّسٌٍـﮧلْٰ😼🤞ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'كفو' then
rami = "• اَٰهَٰہۧ كٍٰفِٰـﮧوٍّ໑ يَٰبٌِٰہوٍّ୭ اَٰلْٰضـلْٰہوٍّ୭عٍِّ😹ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == '😌' then
rami = "• اَٰلْٰمٍٰطَُِلْٰـﮧوٍّ໑بٌِٰ !😕💞ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'اها' then
rami = "• يَٰبٌِٰ قٍٰاَٰبٌِٰـﮧلْٰ اَٰغِِٰشَُـﮧكٍٰ شَُسٌٍاَٰلْٰفِٰـﮧهَٰہۧ حٌٰبٌِٰ😐🌝ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'شسمج' then
rami = "• اَٰسٌٍـمٍٰهَٰہۧـﮧاَٰ جًِّعٍِّجًِّـﮧوٍّ໑عٍِّهَٰہۧ😹👊ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'شسمك' then
rami = "• اَٰسٌٍمٍٰـﮧهَٰہۧ عٍِّبٌِٰـﮧوٍّ໑سٌٍيَٰ لْٰـوٍّ૭سٌٍہيَٰ😾😹💛ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'شوف' then
rami = "• شَُشَُـﮧﮧوٍّ໑فِٰ 🌝🌝ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'مساء الخير' then
rami = "• مٍٰسٌٍـﮧاَٰء اَٰلْٰحٌٰـﮧبٌِٰ يَٰحٌٰہبٌِٰحٌٰہبٌِٰ🌛🔥ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'المدرسه' then
rami = "• لْٰتّٰجًِّيَٰـﮧبٌِٰ اَٰسٌٍمٍٰـﮧهَٰہۧ لْٰاَٰ اَٰطَُِـﮧرِٰدِٰكٍٰ🌞✨ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'منو ديحذف رسائلي' then
rami = "• خّٰـﮧاَٰلْٰتّٰـہكٍٰ 🌚ֆ🌝"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'البوت واقف' then
rami = "• لْٰتكـﮧذَْبٌِٰ حٌٰبٌِٰـہيَٰ 🌞⚡️ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'خلص' then
rami = "• وٍّ໑كٍٰ بٌِٰـﮧسٌٍ سٌٍـﮧوٍّ୭لْٰفِٰلْٰيَٰ اَٰلْٰسٌٍـﮧاَٰلْٰفِٰهَٰہۧ بٌِٰعٍِّـﮧدِٰيَٰنٍٰ🌝🦅ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'حارة' then
rami = "• تّٰسٌٍـہمٍٰطَُِ سٌٍمٍٰـﮧطَُِ غِِٰيَٰـﮧرِٰ يَٰرِٰحٌٰمٍٰنٍٰـﮧهَٰہۧ اَٰلْٰاَٰعٍِّبٌِٰـاَٰدِٰيَٰ وٍّيَٰنٍٰـہطَُِيَٰ عٍِّطَُِلْٰـﮧهَٰہۧ 😾💔ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'هههه' then
rami = "• نٍٰشَُـﮧاَٰلْٰلْٰهَٰہۧ دِٰاَٰيَٰمٍٰـﮧهَٰہۧ💆🏻‍♂💘ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'ههههه' then
rami = "• نٍٰشَُـﮧاَٰلْٰلْٰهَٰہۧ دِٰاَٰيَٰمٍٰـﮧهَٰہۧ💆🏻‍♂💘ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == '😹' then
rami = "• نٍٰشَُـﮧاَٰلْٰلْٰهَٰہۧ دِٰاَٰيَٰمٍٰـﮧهَٰہۧ💆🏻‍♂💘ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'وين' then
rami = "• بٌِٰـﮧﮧأرِٰض اَٰلْٰلْٰهَٰہۧ اَٰلْٰـہوٍّاَٰسٌٍعٍِّـﮧهَٰہۧ يمكن اروح للديسكو😽💜ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'خلص' then
rami = "• خـلصِٰنٍٰـﮧهَٰہۧ انٍٰتّٰـﮧهَٰہۧ شَُْٰبَٰكٍٰ😼👊ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'نايمين' then
rami = "• اَٰنٍٰـاَٰ سٌٍهَٰہۧـہرِٰاَٰنٍٰ اَٰحٌٰرِٰسٌٍـﮧكٍٰمٍٰ مٍٰـﮧטּ داعش😿😹🙌ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'رامي' then
rami = "• مطور السورس فديت ربه🌝✨ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'فديت' then
rami = "•فِٰـﮧﮧدِٰاَٰكٍٰ/جًِّ ثِْْـﮧوٍّ୪لْٰاَٰنٍٰ اَٰلْٰكٍٰـرِٰوٍّ୭بٌِٰ😟😂💚ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'شو' then
rami = "• كٍٰلْٰـشَُـﮧﮧيَٰ مٍٰـہاَٰفـﮧيٍّ اَٰرِٰجًِّـعٍِّ نٍٰـاَٰمٍٰ🐼🌩ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'اوف' then
rami = "• هَٰہۧـﮧﮧاَٰيَٰ اَٰوٍّفِٰ مٍٰنٍٰ يَٰـاَٰ نٍٰـوٍّ୭عٍِّ صُِـاَٰرِٰتّٰ اَٰلْٰـسٌٍاَٰلْٰفِٰهَٰہۧ مٍٰتّٰـنٍٰعٍِّرِٰفِٰ🌚🌙ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'احبك' then
rami = "•كًِّـﮧذَْاَٰبٌِٰ يَٰـرِٰيَٰدِٰ يَٰطَُِـہكلٍٰجًِّ5😹🌞⚡️ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end
if text == 'مين' then
rami = "• اَٰنٍٰـﮧﮧاَٰ بٌِٰـوٍّ໑تّٰ💨🌝ֆ"
send(msg.chat_id_, msg.id_, 1, rami, 1, 'md')
end

end
if  (text and text == 'تفعيل الردود') and is_owner(msg) then
    if not database:get('RAMBO:'..bot_id..'rep:mute'..msg.chat_id_) then
  send(msg.chat_id_, msg.id_, 1, '☑┇ردود البوت بالفعل تم تفعيلها', 1, 'md')
    else
  send(msg.chat_id_, msg.id_, 1, '☑┇تم تفعيل ردود البوت', 1, 'md')
   database:del('RAMBO:'..bot_id..'rep:mute'..msg.chat_id_)
  end
  end
  if(text and text == 'تعطيل الردود') and is_owner(msg) then
    if database:get('RAMBO:'..bot_id..'rep:mute'..msg.chat_id_) then
  send(msg.chat_id_, msg.id_, 1, '☑┇ردود البوت بالفعل تم تعطيلها', 1, 'md')
  else
  send(msg.chat_id_, msg.id_, 1, '☑┇تم تعطيل ردود البوت', 1, 'md')
    database:set('RAMBO:'..bot_id..'rep:mute'..msg.chat_id_,true)
  end
    end

end
return {
	keko_RAMBO = keko_RAMBO,
}
--[[
BY : RAMBO_SYR
Channel Files : https://t.me/th3victory
]]
