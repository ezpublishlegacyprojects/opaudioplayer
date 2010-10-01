<script type="text/javascript" src={concat($plugin_path, 'audio-player.js')|ezdesign()}></script>

<p id="audioplayer_1">Alternative content</p>

<script type="text/javascript">
	AudioPlayer.setup({concat($plugin_path, 'player.swf')|ezdesign()}, {ldelim}

		width: 290,
		initialvolume: 100,
		transparentpagebg: "yes",
		left: "000000",
		lefticon: "FFFFFF"
	{rdelim});

	AudioPlayer.embed("audioplayer_1", {ldelim}

		soundFile: {concat("content/download/",$attribute.contentobject_id,"/",$attribute.content.contentobject_attribute_id,"/",$attribute.content.original_filename)|ezurl()},
		titles: "{$attribute.content.original_filename|wash()}",
		artists: "Artist name",
		autostart: "yes"
	{rdelim});
</script>