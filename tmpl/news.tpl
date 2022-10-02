{include file="header.tpl"}

{if $frm.id}

{loaddata name="news_item" id=$frm.id var=new}
{if $new}
<h3>{$new.title}</h3>
{$new.full_text}
{else}
Not Found
{/if}

{else}

<h3>News</h3><br>

<table cellspacing=1 cellpadding=2 border=0 width=100%>
{loaddata name="news" var=news page=$frm.p limit=20 pages_var=pages}
{foreach from=$news item=n}
<tr>
 <td align=justify><a name="{$n.id}"></a><a href="{"?a=news&id=`$n.i`"|encurl}">{$n.title}</a><br>
  {$n.full_text}<br>
  <small><i>{$n.date}</i></small>
 </td>
</tr>
{foreachelse}
<tr>
 <td colspan=3 align=center>No news found</td>
</tr>
{/foreach}
</table>

<center>
{paginator col=$pages.col cur=$pages.cur url="?a=news&p=%s"|encurl}
</center>

{/if}

{include file="footer.tpl"}