{include file="header.tpl"}

{loaddata name="user_notices" var=notices}

{if $notices}
<ul style="color:red">
{foreach from=$notices item=n}
<li><b>{$n.title}</b> {$n.text|nl2br}
<form method=post>
<input type=hidden name=a value=user_notices>
<input type=hidden name=action value=notified>
<input type=hidden name=id value={$n.id}>
<input type=submit value="Dismiss">
</form>
{/foreach}
</ul>
{/if}

<h3>Your account:</h3><br>

{if $settings.use_transaction_code ==1 && $userinfo.transaction_code == ''} <b>Note: currently you have not specified 
a Transaction code. The Transaction code strengthens your funds security in our 
system. The code is required to withdraw funds from your account{if $settings.internal_transfer_enabled} 
and for internal transfer to another user account{/if}. Just do not change 'Transaction 
code' in your account information if you do not want to use this feature. <a href=?a=edit_account>Click 
here</a> to specify a new transaction code .</b> <br>
<br>
{/if}

{if $userinfo.tfa_not_enabled} 
<b>Security Note: please, activate <a href="{"?a=security"|encurl}">Two Factor Authentication</a> to keep your account safe.</b>
{/if}

<table cellspacing=0 cellpadding=2 border=0>
<tr>
 <td>User:</td>
 <td>{$userinfo.username}</td>
</tr><tr>
 <td>Registration Date:</td>
 <td>{$userinfo.create_account_date}</td>
</tr><tr>
 <td>Last Access:</td>
 <td>{$last_access|default:"n/a"}&nbsp;</td>
</tr><tr>
 <td>&nbsp;</td>
</tr><tr>
 <td valign=top>Account Balance:</td>
 <td>{$currency_sign}<b>{$ab_formated.total}</b><br>
 <small>
{foreach from=$ps item=p}
   {if $p.balance > 0}{$currency_sign}{$p.balance} of {$p.name}<br>{/if}
{/foreach}
</tr><tr>
 <td>Earned Total:</td>
 <td>{$currency_sign}<b>{$ab_formated.earning}</b></td>
</tr><tr>
 <td>Pending Withdrawal:</td>
 <td>{$currency_sign}<b>{$ab_formated.withdraw_pending}</b></td>
</tr><tr>
 <td>Withdrew Total:</td>
 <td>{$currency_sign}<b>{$ab_formated.withdrawal}</b></td>
</tr><tr>
 <td>Active Deposit:</td>
 <td>{$currency_sign}<b>{$ab_formated.active_deposit}</b></td>
</tr><tr>
 <td>&nbsp;</td>
</tr>
{if $last_deposit}
<tr>
 <td>Last Deposit:</td>
 <td>{$currency_sign}<b>{$last_deposit|default:"n/a"}</b> &nbsp; <small>{$last_deposit_date|default:"n/a"}</small></td>
</tr>
{/if}
{if $ab_formated.deposit != 0}
<tr>
 <td>Total Deposit:</td>
 <td>{$currency_sign}<b>{$ab_formated.deposit}</b></td>
</tr>
{/if}
{if $last_withdrawal}
<tr>
 <td>Last Withdrawal:</td>
 <td>{$currency_sign}<b>{$last_withdrawal|default:"n/a"}</b> &nbsp; <small>{$last_withdrawal_date|default:"n/a"}</small></td>
</tr>
{/if}
{if $ab_formated.withdrawal > 0}
<tr>
    <td>Withdrew Total:</td>
 <td>{$currency_sign}<b>{$ab_formated.withdrawal}</b></td>
</tr>
{/if}
<tr>
 <td>&nbsp;</td>
</tr></table>

{section name=p loop=$ps}
  {if $ps[p].pending_col > 0}{$ps[p].pending_col} {$ps[p].name} deposit{if $ps[p].pending_col > 1}s{/if} of {$currency_sign}{$ps[p].pending_amount} total pending<br>{/if}
{/section}

<br><br>


{include file="footer.tpl"}