<link href={concat($plugin_path, 'demo/flashblock/flashblock.css')|ezdesign()} type="text/css" rel="stylesheet">

<!-- include SM2 library -->
<script type="text/javascript" src={concat($plugin_path, 'script/soundmanager2.js')|ezdesign()}></script>

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

{literal}
soundManager.onready(function() {
  // check if SM2 successfully loaded..
  if (soundManager.supported()) {
    // SM2 has loaded - now you can create and play sounds!
    var mySound = soundManager.createSound({
      id: 'aSound',
{/literal}
      url: {concat("content/download/",$attribute.contentobject_id,"/",$attribute.content.contentobject_attribute_id,"/",$attribute.content.original_filename)|ezurl(single)},
{literal}
      autoLoad: true,
      autoPlay: true,
      // onload: [ event handler function object ],
    });
    mySound.play();
  } else {
    // (Optional) Hrmm, SM2 could not start. Show an error, etc.?
  }
});
{/literal}
</script>

<div id="sm2-container"></div>