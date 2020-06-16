#!usr/bin/tamfan/perl
#Tools ini adalah sebuah tools untuk mengconvert sebuah game dari facebook. please no recode.
#Author : MrTamfanX - TUANB4DUT
#Support My Team : BuitenzorgSyndicate.io - UYSFDS MrTamfanX - MrTamfanX Cyber Team
use WWW::Facebook::Go::SGF qw(facebook2sgf);
use Term::ANSIColor;
use if $^O eq "MSWin32", Win32::Console::ANSI;
use POSIX qw(strftime);
@months = qw( Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desmber );
@days = qw(Minggu Senin Selasa Rabu Kamis Jumat Sabtu Minggu);
$years = strftime "%Y", gmtime;
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
mrtamfanx();
menukas();
sub mrtamfanx {
if ($^O =~ /MSWin32/) {system("mode con: cols=100 lines=29");system("cls"); }else { system("resize -s 28 87");system("clear"); }
print color('bold red'),"┏━━━┓  ┳    ┳ ┳ ┏━━┳━━┓ ┏━━━━┓ ┏━┓ ┳ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓\n";
print color('bold red'),"┃┏━┓┗┓ ┃    ┃ ┃ ┃  ┃  ┃ ┃    ┃ ┃ ┃ ┃ ┻   ┏┛ ┃    ┃ ┃    ┃ ┃\n";
print color('bold red'),"┃┗━┛ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃    ┏┛  ┃    ┃ ┃    ┃ ┃\n";
print color('bold red'),"┃  ━━┫ ┃    ┃ ┃    ┃    ┣━━━   ┃ ┃ ┃   ┏┛   ┃    ┃ ┣━━┳━┛ ┃ ━━━┓\n";
print color('bold white'),"┃┏━┓ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃  ┏┛    ┃    ┃ ┃  ┗┓  ┃    ┃\n";
print color('bold white'),"┃┗━┛┏┛ ┃    ┃ ┃    ┃    ┃    ┃ ┃ ┃ ┃ ┏┛   ┳ ┃    ┃ ┃   ┃  ┃    ┃\n";
print color('bold white'),"┗━━━┛  ┗━━━━┛ ┻    ┻    ┗━━━━┛ ┻ ┗━┛ ┗━━━━┛ ┗━━━━┛ ┻   ┻  ┗━━━━┛\n";
print color('bold cyan'),"┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓\n";
print color('bold cyan'),"┃";
print color('bold red'),"Author ";
print color('bold green'),": ";
print color('bold white'),"MrTamfanX ";
print color('bold red'),"&& ";
print color('bold white'),"TUANB4DUT ";
print color('bold blue'),"Team ";
print color('bold green'),": ";
print color('bold red'),"Buitenzorg Syndicate.io";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┃";
print color('bold white'),"Hubungi Contact WhatsApp ";
print color('bold green'),": 62 857";
print color('bold white'),"-";
print color('bold green'),"8041";
print color('bold white'),"-";
print color('bold green'),"1404 ";
print color('bold red'),"& ";
print color('bold green'),"62 812";
print color('bold white'),"-";
print color('bold green'),"2121";
print color('bold white'),"-";
print color('bold green'),"5191";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\n";
print color('bold red'),"┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Tanggal ";
print color('bold green'),": ";
print color('bold yellow'),"$mday ";
print color('bold white'),"Hari ";
print color('bold green'),": ";
print color('bold yellow'),"$days[$wday] ";
print color('bold white'),"Bulan ";
print color('bold green'),": ";
print color('bold yellow'),"$months[$mon] ";
print color('bold white'),"Tahun ";
print color('bold green'),": ";
print color('bold yellow'),"$years\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Jam ";
print color('bold green'),": ";
print color('bold yellow'),"$hour ";
print color('bold green'),": ";
print color('bold yellow'),"$min ";
print color('bold green'),": ";
print color('bold yellow'),"$sec\n\n";
}
sub menukas {
print nomerkas(),"";
chomp($akasid=<STDIN>);
my $akasid1 = facebook2sgf($akasid);
print nomerkas1(),"$akasid1";
}
sub nomerkas
{
    my $n = shift // '•';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] TYPE YOUR GAME ID FACEBOOK "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas1

{
    my $n = shift // '✓';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] SUCCSES CONVERT "
    , color('bold green'),": "
    , color('bold cyan')
    ;
}

