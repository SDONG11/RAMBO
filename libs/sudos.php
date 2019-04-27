<?php
ob_start();
$API_KEY = " "; // TOKEN . 
define('API_KEY',$API_KEY);
echo "<a href='https://api.telegram.org/bot$API_KEY/setwebhook?url=".$_SERVER['SERVER_NAME']."".$_SERVER['SCRIPT_NAME']."'>setwebhook</a>";
function bot($method,$datas=[]){
    $iBadlz = http_build_query($datas);
        $url = "https://api.telegram.org/bot".API_KEY."/".$method."?$iBadlz";
        $iBadlz = file_get_contents($url);
        return json_decode($iBadlz);
}

$update     = json_decode(file_get_contents('php://input'));
$message = $update->message;
$message_id = $update->message->message_id;
$text           = $message->text;
$chat_id     = $message->chat->id;
$user          = $update->message->from->username;
$sudo         = 718197344; // ايديك .
$bot_id       = 761683265; // ايدي بوتك .
$from_id     = $message->from->id;
$from_user = $message->from->username;
$re         = $update->message->reply_to_message;
$re_id      = $update->message->reply_to_message->from->id;
$re_user    = $update->message->reply_to_message->from->username;
$get             = file_get_contents("https://api.telegram.org/bot$API_KEY/getChatMember?chat_id=$chat_id&user_id=".$from_id);
$info            = json_decode($get, true);
$JJ117        = $info['result']['status'];
mkdir("data");
mkdir("data/devloper");
$devlopers = file_get_contents("data/devloper/devlop.txt");
$dev = explode ("\n",$devlopers);
$_devlopers = file_get_contents("data/devloper/devloper.txt");
$dev_ = explode("\n",$_devlopers);
$space ="";
$space = $space."*➺*".$_devlopers."\n➖➖➖➖➖➖➖\n📨¦ الٱيـديـٱت :\n" ."*➺*`".$devlopers . "`";
if($re and $text == "رفع مطور" || $text =="/p" and $re_id !=$bot_id and $from_id == $sudo and $re_id != $sudo and !in_array($re_id,$dev)){
	file_put_contents("data/devloper/devlop.txt",$re_id ."\n " , FILE_APPEND);
	file_put_contents("data/devloper/devloper.txt",'[@'.$re_user ."]". "\n " , FILE_APPEND);
	bot('SendMessage',[
    'chat_id'=>$chat_id,
    'text'=>"*👤¦ العضو » *[@$re_user]
*🎫¦ الايدي » *`$re_id`
*🛠¦ تم ترقيته ليصبح مطور *",
    'parse_mode'=>'MARKDOWN',
    'reply_to_message_id'=>$message->message_id,
  ]);
}
elseif($re and $text == "رفع مطور" || $text =="/p" and $re_id !=$bot_id and $from_id == $sudo and $re_id != $sudo and in_array($re_id,$dev)){
bot('SendMessage',[
    'chat_id'=>$chat_id,
    'text'=>"*👤¦ العضو » *[@$re_user]
*🎫¦ الايدي » *`$re_id`
*🛠¦ انه مسبقٱ مطور في البوت *",
    'parse_mode'=>'MARKDOWN',
    'reply_to_message_id'=>$message->message_id,
  ]);
}
if($text == "مسح المطورين" || $text == "/n"){
	file_put_contents("data/devloper/devlop.txt"," ");
	file_put_contents("data/devloper/devloper.txt"," ");
	bot('SendMessage',[
    'chat_id'=>$chat_id,
    'text'=>"*📛¦ تم مسح المطورين ☔️*",
    'parse_mode'=>'MARKDOWN',
    'reply_to_message_id'=>$message->message_id,
  ]);
}
if($text == "المطورين" || $text == "/d" and $devlopers != NULL and $devlopers != " "){
	bot('SendMessage',[
    'chat_id'=>$chat_id,
    'text'=>"*👨🏽‍💻¦ قائمه الـمـطـوريـن :*\n\n*➺* ❲* معرفك باليز *❳ *»* *❲* `$sudo` *❳*\n➖➖➖➖➖➖➖\n📨¦ الـمعرفـٱت :\n$space\n",
    'parse_mode'=>"MARKDOWN",
    'reply_to_message_id'=>$message->message_id,
  ]);
}
if($text == "المطورين" || $text == "/d" and $devlopers == NULL || $devlopers == " "){
	bot('SendMessage',[
    'chat_id'=>$chat_id,
    'text'=>"*👨🏽‍💻¦ قائمه الـمـطـوريـن :*\n\n*➺* ❲* معرفك باليز *❳ *»* *❲* `$sudo` *❳*\n➖➖➖➖➖➖➖\n📨¦ لٱ يـوجد مطورين حٱليا",
    'parse_mode'=>"MARKDOWN",
    'reply_to_message_id'=>$message->message_id,
  ]);
}
if($text == "رتبتي" and in_array($from_id,$dev)){
	bot('SendMessage',[
    'chat_id'=>$chat_id,
    'text'=>"🎫¦ رتبتك » مطور البوت 👨🏻‍
➖",
    'parse_mode'=>'MARKDOWN',
    'reply_to_message_id'=>$message->message_id,
  ]);
}
if($re and $text == "رفع مطور" || $text =="/p" and $from_id == $sudo and $re_id == $bot_id){
	bot('SendMessage',[
    'chat_id'=>$chat_id,
    'text'=>"*👤¦ عذرا لا يمكنني رفع نفسي *",
    'parse_mode'=>'MARKDOWN',
    'reply_to_message_id'=>$message->message_id,
  ]);
}
if($re and $text == "رفع مطور" || $text =="/p" and $from_id == $sudo and $re_id == $sudo){
	bot('SendMessage',[
    'chat_id'=>$chat_id,
    'text'=>"*👤¦ هل انت احمق ،؟ انت الاساسي هنا ،! *",
    'parse_mode'=>'MARKDOWN',
    'reply_to_message_id'=>$message->message_id,
  ]);
}