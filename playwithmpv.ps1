param($data)

$CURRENT_VERSION = "v1.2.2"
# v1.2.1 add update remind
# v1.2.2 fix title has | error

# delete PlayWithMPV://
$data=$data.subString(14)
# delete /
$data=$data.subString(0, $data.Length-1)+$data.subString($data.Length-1).replace("/", "");

# base64 decode
$data=[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($data))

# param split
$datas=$data.split("\|")
$domain=$datas[0]
$videoUrl=$datas[1]
$title=$datas[2]
$TM_CURRENT_VERSION=$datas[3]

# version check
if($CURRENT_VERSION -ne $TM_CURRENT_VERSION){
    echo "||=============================== �������� ========================================||"
    echo "||                                                                                 ||"
    echo "||============================= update remind =====================================||"
    echo "||                                                                                 ||"
    echo "||=============================== �������� ========================================||"
    echo "||                                                                                 ||"
    echo "||        �����ͺ�ű��汾�� powershell �ű��汾��һ�£��뾡�����                 ||"
    echo "||  tampermonkey script version don't match powershell script, please update now   ||"
    echo "||                                                                                 ||"
    echo "||                                                                                 ||"
    echo "|| �ͺ�ű��汾  -   tampermonkey version   ��$TM_CURRENT_VERSION                               ||"
    echo "|| powershell �ű��汾 - powershell version ��$CURRENT_VERSION                               ||"
    echo "||                                                                                 ||"
    echo "||                                                                                 ||"
    echo "|| �ͺ�ű����µ�ַ - tampermonkey script update url��                             ||"
    echo "||                                                                                 ||"
    echo "|| https://greasyfork.org/zh-CN/scripts/444056-play-with-mpv                       ||"
    echo "||                                                                                 ||"
    echo "||                                                                                 ||"
    echo "|| powershell �ű����µ�ַ - powershell update url                                 ||"
    echo "|| ���滻 playwithmpv.ps1 ���� - replace playwithmpv.ps1 is enough����             ||"
    echo "||                                                                                 ||"
    echo "|| https://github.com/LuckyPuppy514/Play-With-MPV/releases                         ||"
    echo "||                                                                                 ||"
    echo "||                                                                                 ||"
    echo "||=============================== �������� ========================================||"
    echo "||                                                                                 ||"
    echo "||============================= update remind =====================================||"
    echo "||                                                                                 ||"
    echo "||=============================== �������� ========================================||"
    echo "||                                                                                 ||"
    echo "||                                                                                 ||"
    echo "||=========================== �� Enter �������� ===================================||"
    echo "||======================== press Enter to continue ================================||"
    echo "||                                                                                 ||"
    echo "||                                                                                 ||"
    echo "||                                                                                 ||"
    pause
}

echo "||================================ ���� domain ====================================||"
echo "|| "$domain
echo "||                                                                                 ||"
echo "||                                                                                 ||"
echo "||============================ ��Ƶ���� video url =================================||"
echo "|| "$videoUrl
echo "||                                                                                 ||"
echo "||                                                                                 ||"
echo "||                                                                                 ||"
echo "||                                                                                 ||"
echo "||=============================== ���� title ======================================||"
echo "|| "$title
echo "||                                                                                 ||"
echo "||                                                                                 ||"
echo "||========================== ��ʼ���� start playing ===============================||"
echo ""

# deal bilibili video url
$bilibili="www.bilibili.com"
$youtube="www.youtube.com"
if($domain -like $bilibili){
    echo "#EXTM3U" > $PSScriptRoot\_tmp_bilibili.m3u
	echo "#Generated by PlayWithMPV_LuckyPuppy514" >> $PSScriptRoot\_tmp_bilibili.m3u
	echo "#EXTINF:$title" >> $PSScriptRoot\_tmp_bilibili.m3u
	echo $videoUrl >> $PSScriptRoot\_tmp_bilibili.m3u
	mpv -title $title --http-header-fields="referer:https://www.bilibili.com/","user-agent:Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0" --playlist=$PSScriptRoot\_tmp_bilibili.m3u
    exit
}

# deal youtube video url
if($domain -like $youtube){
    mpv $videoUrl
    exit
}

# deal other video url
mpv $videoUrl -title $title
exit
