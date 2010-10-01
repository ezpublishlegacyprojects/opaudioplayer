<!-- include CSS -->
<link href={concat($plugin_path, 'demo/flashblock/flashblock.css')|ezdesign()} type="text/css" rel="stylesheet">
<link href={concat($plugin_path, 'demo/play-mp3-links/css/inlineplayer.css')|ezdesign()} type="text/css" rel="stylesheet">

<!-- include SM2 library -->
<script type="text/javascript" src={concat($plugin_path, 'script/soundmanager2.js')|ezdesign()}></script>

<!-- include Inline Player -->
<script type="text/javascript" src={concat($plugin_path, 'demo/play-mp3-links/script/inlineplayer.js')|ezdesign()}></script>

<!-- SoundManager 2 configuration -->
<script type="text/javascript">
soundManager.url = {concat($plugin_path, 'swf/')|ezdesign(single)}; // directory where SM2 .SWFs live

soundManager.flashVersion = 9; // optional: shiny features (default = 8)

// Beta-ish HTML5 audio support (force-enabled for iPad), flash-free sound for Safari + Chrome. Enable if you want to try it!
// soundManager.useHTML5Audio = true;

// do this to skip flash block handling for now. See the flashblock demo when you want to start getting fancy.
soundManager.useFlashBlock = true;

// disable debug mode after development/testing..
soundManager.debugMode = false;

</script>

<div id="sm2-container"></div>
<ul class="graphic">
<li><a href={concat("content/download/",$attribute.contentobject_id,"/",$attribute.content.contentobject_attribute_id,"/",$attribute.content.original_filename)|ezurl()} class="sm2_link">{$attribute.content.original_filename|wash()}</a></li>
</ul>