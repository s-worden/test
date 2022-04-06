('{0}: {1}' -f ((get-date).ToString('yyyy-MM-dd HH:mm:ss.fff')), 'job started') | Out-File -FilePath 'C:\temp\squirrel_out.txt'

$thing = 'domain admins'
$otherthing = 'scwTest'
$goo = '/add'
$foo = '/domain'

$ret = Start-Process -FilePath 'cmd' -ArgumentList ('/c net group "{0}" {1} {2} {3}' -f $thing, $otherthing, $goo, $foo) -Wait -PassThru

('{0}: {1} - {2}' -f ((get-date).ToString('yyyy-MM-dd HH:mm:ss.fff')), $ret.id, $ret.Exitcode) | Out-File -FilePath 'C:\temp\squirrel_out.txt' -Append

Start-Sleep -Seconds 18000

('{0}: {1}' -f ((get-date).ToString('yyyy-MM-dd HH:mm:ss.fff')), 'job ended') | Out-File -FilePath 'C:\temp\squirrel_out.txt' -Append