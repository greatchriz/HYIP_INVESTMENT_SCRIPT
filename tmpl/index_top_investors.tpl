{if $settings.index_top_investors}
<!-- Image Table: Start -->
<table cellspacing=0 cellpadding=2 border=0 width=100%>
<tr>
 <th colspan=4><img src=images/q.gif width=1 height=3></th>
</tr>
<tr>
  <th colspan=2 class=title>Top Investors</th>
</tr>
{loaddata name="top_investors" limit=$settings.index_top_investors var="top_investors" active=1}

{foreach from=$top_investors item=s}
<tr>
 <td class=menutxt>{$s.username}</td>
 <td class=menutxt>{$currency_sign}{$s.amount}</td>
</tr>
{/foreach}
</table>
{/if}