<html>
<body>
<center>
{$message}
{if $pin}
<br><br>
<form method=post>
<input type=hidden name=a value=do_maintenance>
PIN: <input type=password name=pin value=""> <input type=submit value="Enter">
</form>
{/if}
</center>
</body>
</html>