{include file="header.tpl"}

{loaddata name="top_investors" limit=20 page=$frm.p var="top_investors" active=1 pages_var=paginator}

<table cellspacing=1 cellpadding=2 border=0 width=100%>
{foreach from=$top_investors item=s}
<tr>
 <td class=menutxt>{$s.username}</td>
 <td class=menutxt>{$currency_sign}{$s.amount}</td>
</tr>
{/foreach}
</table>

{paginator col=$paginator.col cur=$paginator.cur url="?a=top_investors&p=%s"}

{include file="footer.tpl"}
