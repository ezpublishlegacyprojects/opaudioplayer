{def $width=200
	 $height=20}

{if and($attribute.content.controls|ne(''), $attribute.content.controls|ne('classic') )}
	{def $swf=concat($plugin_path, 'dewplayer-', $attribute.content.controls|downcase(), '.swf')|ezdesign(no)}
{else}
	{def $swf=concat($plugin_path, 'dewplayer.swf')|ezdesign(no)}
{/if}

{switch match=$attribute.content.controls}
    {case match='mini'}
		{set $width=160}
	{/case}
    {case in=array('multi','rect')}
		{set $width=240}
	{/case}
	{case match='playlist'}
		{set $width=240
			 $height=200}
	{/case}
	{case match='bubble'}
		{set $width=250
			 $height=65}
	{/case}
{/switch}

<object type="application/x-shockwave-flash" data="{$swf}" width="{$width}" height="{$height}" id="dewplayer" name="dewplayer">
<param name="wmode" value="transparent" />
<param name="movie" value="{$swf}" />
<param name="flashvars" value="mp3={concat("content/download/",$attribute.contentobject_id,"/",$attribute.content.contentobject_attribute_id,"/",$attribute.content.original_filename|urlencode())|ezurl(no, full)}&amp;autostart=1&amp;autoreplay=1&amp;showtime=1&amp;randomplay=1&amp;nopointer=1" />
</object>