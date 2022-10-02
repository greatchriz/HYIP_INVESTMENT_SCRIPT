{include file="header_install.tpl"}

<body bgcolor="#FFFFF2" link="#666699" vlink="#666699" alink="#666699" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" data-gr-c-s-loaded="true">
    <center>
        <table width="760" border="0" cellpadding="0" cellspacing="0" height="100%">
            <tbody>
                <tr>
                    <td valign="top" height="142">
                        <table cellspacing="0" cellpadding="0" border="0" width="100%" height="142">
                            <tbody>
                                <tr>
                                    <td background="images/ver.gif" bgcolor="#FF8D00"><img src="images/top.gif" width="304" height="142" border="0" align="left"></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <table cellspacing="0" cellpadding="1" border="0" width="100%" height="100%" bgcolor="#ff8d00">
                            <tbody>
                                <tr>
                                    <td>
                                        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tbody>
                                                <tr bgcolor="#FFFFFF" valign="top">
                                                    <td bgcolor="#FFFFFF" valign="top" width="99%">
                                                        <!-- Main: Start -->
                                                        <table width="100%" height="100%" border="0" cellpadding="10" cellspacing="0" class="forTexts">
                                                            <tbody>
                                                                <tr>
                                                                    <td width="100%" height="100%" valign="top">
                                                                        <center style="width:60%;margin:auto;">
                                                                            <h3>HYIP Manager Pro. Install Script.</h3>
																			
																			{if $wrong_license == 1}
                                                                            <div class="alert alert-danger"><b>Wrong license.</b><br><br>Please contact <a href="http://www.goldcoders.com">www.goldcoders.com</a> if you bought license to this host.</div>						 
                                                                            {/if}


                                                                            {if $wrong_mysql_data}
                                                                            <div class="alert alert-danger"><b>Wrong mysql data.</b><br><br>Please be sure you entered right mysql host, mysql database name, mysql login, mysql password.<br>
                                                                            Ask this information your hosting provider if you not sure.</div>
                                                                            {/if}

                                                                            {if $installed != 1}
																			
																		
                                                                           <form method=post>
                                                                           <input type=hidden name=a value=install>
                                                                                <table class="form">
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <th colspan="2">MySQL data</th>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th>Mysql host:</th>
                                                                                            <td>
                                                                                                <input type=text name=mysql_host value='{if $form_data.mysql_host}{$form_data.mysql_host}{else}localhost{/if}' class=inpts size=30>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th>Mysql database name:</th>
                                                                                            <td>
                                                                                                <input type=text name=mysql_db value='{$form_data.mysql_db}' class=inpts size=30>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th>Mysql username:</th>
                                                                                            <td>
                                                                                                <input type=text name=mysql_username value='{$form_data.mysql_username}' class=inpts size=30>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th>Mysql password:</th>
                                                                                            <td>
                                                                                                <input type=text name=mysql_password value='{$form_data.mysql_password}' class=inpts size=30>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th colspan="2">License data:</th>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th>Host:</th>
                                                                                            <td>{$hostname}</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th colspan="2">Admin account data:</th>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th>E-mail:</th>
                                                                                            <td>
                                                                                                <input type=text name=admin_email value='{$form_data.admin_email}' class=inpts size=30>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th>Password:</th>
                                                                                            <td>
                                                                                                <input type=password name=admin_password value='' class=inpts size=30>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th>&nbsp;</th>
                                                                                            <td>
                                                                                                <input type=submit value='Install' class=sbmt>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </form>
																			
																			{else}
                                                                            <h1>Script successfully installed!</h1>
                                                                            <br><br>
                                                                            <table cellspacing=0 cellpadding=1 border=0 width=400><tr><td>
                                                                            Please delete install.php file for security reason.<br><br>
                                                                            Path to script: <a href="{$script_path}" target=_blank>{$script_path}</a><br>
                                                                            Admin login: admin<br>
                                                                            Admin password: {$form_data.admin_password}<br><br>
                                                                            Login to admin area, go to settings screen and specify your sitename, payment accounts and other information.<br>
                                                                            </td></tr></table>
                                                                            {/if}
																			
                                                                        </center>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
														
{include file="footer_install.tpl"}