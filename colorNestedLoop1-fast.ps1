# color testing 2017Oct12

$color = 0;
$outerLoop = 0;
$host.ui.rawui.backgroundcolor = $color;
write-host color = 0
clear-host;

do
{
    while ($color -lt 16) 
    {
        $color = $color +1;
        if ($color -eq 16)
        {
            start-sleep -milliseconds 5;
            break;
        }
        elseif ($color -eq 6 -or $color -eq 7 -or $color -eq 10 -or $color -eq 11 -or $color -eq 13 -or $color -eq 14 -or $color -eq 15)
        {
            $host.ui.rawui.foregroundcolor = 0;
            $host.ui.rawui.backgroundcolor = $color;
            clear-host;
            write-host color = $color;
            start-sleep -milliseconds 5;
        }
        else
        {
            $host.ui.rawui.foregroundcolor = 6;
            $host.ui.rawui.backgroundcolor = $color;
            clear-host;
            write-host color = $color;
            start-sleep -milliseconds 5;
        }
    }
 $outerLoop = $outerLoop + 1;
 $color = 0;
} until ($outerLoop -eq 1000)
exit;