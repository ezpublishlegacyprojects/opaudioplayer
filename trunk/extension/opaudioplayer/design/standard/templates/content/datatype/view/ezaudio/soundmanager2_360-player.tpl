<link href={concat($plugin_path, 'demo/360-player/360player.css')|ezdesign()} type="text/css" rel="stylesheet">

<!-- special IE-only canvas fix -->
<!--[if IE]><script type="text/javascript" src={concat($plugin_path, 'demo/360-player/script/excanvas.js')|ezdesign()}></script><![endif]-->

<!-- Apache-licensed animation library -->
<script type="text/javascript" src={concat($plugin_path, 'demo/360-player/script/berniecode-animator.js')|ezdesign()}></script>

<!-- include SM2 library -->
<script type="text/javascript" src={concat($plugin_path, 'script/soundmanager2.js')|ezdesign()}></script>

<script type="text/javascript" src={concat($plugin_path, 'demo/360-player/script/360player.js')|ezdesign()}></script>

<!-- stuff you don't need -->
<!-- makes the fonts nicer etc. -->
<link rel="stylesheet" type="text/css" href={concat($plugin_path, 'demo/360-player/index.css')|ezdesign()} />
<link rel="stylesheet" type="text/css" href={concat($plugin_path, 'demo/360-player/demo.css')|ezdesign()} />

<!-- soundManager.useFlashBlock: related CSS -->
<link href={concat($plugin_path, 'demo/flashblock/flashblock.css')|ezdesign()} type="text/css" rel="stylesheet">

<!-- configure it for your use -->
<script type="text/javascript">
soundManager.url = {concat($plugin_path, 'swf/')|ezdesign(single)}; // directory where SM2 .SWFs live

soundManager.flashVersion = 9; // optional: shiny features (default = 8)

// Note that SoundManager will determine and append the appropriate .SWF file to the URL,
// eg. /path/to/sm2-flash-movies/soundmanager2.swf automatically.

// Beta-ish HTML5 audio support (force-enabled for iPad), flash-free sound for Safari + Chrome. Enable if you want to try it!
// soundManager.useHTML5Audio = true;

// do this to skip flash block handling for now. See the flashblock demo when you want to start getting fancy.
soundManager.useFlashBlock = true;

// disable debug mode after development/testing..
soundManager.debugMode = false;

</script>

<div id="sm2-container">
 <!-- flash movie is added here -->
</div>
<div class="ui360">
<a href={concat("content/download/",$attribute.contentobject_id,"/",$attribute.content.contentobject_attribute_id,"/",$attribute.content.original_filename)|ezurl()}>{$attribute.content.original_filename|wash()}</a>
</div>
