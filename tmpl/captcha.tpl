{if $ti.check[$action]}

{if $ti.type == 'image'}
<tr>
 <td class=menutxt><img src="{"?a=show_validation_image&`$ti.session.name`=`$ti.session.id`&rand=`$ti.session.rand`"|encurl}"></td>
 <td><input type=text name=validation_number class=inpts size={$inpt_size|default:30}></td>
</tr>
{/if}

{if $ti.type == 'recaptcha_v2'}
<script src='https://www.google.com/recaptcha/api.js'></script>
<tr>
 <td class=menutxt colspan=2>
<div class="g-recaptcha" data-sitekey="{$settings.recaptcha_site_key}"></div>
 </td>
</tr>
{/if}

{if $ti.type == 'recaptcha_v3'}
<script src="https://www.google.com/recaptcha/api.js?render={$settings.recaptcha_site_key}"></script>
{literal}
  <script>
  grecaptcha.ready(function() {
      grecaptcha.execute('{/literal}{$settings.recaptcha_site_key}{literal}', {action: '{/literal}{$action}{literal}'}).then(function (token) {
                var rinput = document.getElementById('g-recaptcha');
                rinput.value = token;
            });
  });
  </script>
{/literal}
<tr>
 <td class=menutxt colspan=2>
<input type="hidden" name="g-recaptcha-response" id="g-recaptcha">
 </td>
</tr>
{/if}

{/if}