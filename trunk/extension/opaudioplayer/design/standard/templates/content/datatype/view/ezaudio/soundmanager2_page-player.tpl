<link href={concat($plugin_path, 'demo/page-player/css/page-player.css')|ezdesign()} type="text/css" rel="stylesheet">

<!-- soundManager.useFlashBlock: related CSS -->
<link href={concat($plugin_path, 'demo/flashblock/flashblock.css')|ezdesign()} type="text/css" rel="stylesheet">

<!-- include SM2 library -->
<script type="text/javascript" src={concat($plugin_path, 'script/soundmanager2.js')|ezdesign()}></script>

<script type="text/javascript" src={concat($plugin_path, 'demo/page-player/script/page-player.js')|ezdesign()}></script>

<!-- configure it for your use -->
<script type="text/javascript">

soundManager.useHighPerformance = true; // keep flash on screen, boost performance
soundManager.wmode = 'transparent'; // transparent SWF, if possible
soundManager.useFastPolling = true; // increased JS callback frequency

soundManager.url = {concat($plugin_path, 'swf/')|ezdesign(single)}; // directory where SM2 .SWFs live

// do this to skip flash block handling for now. See the flashblock demo when you want to start getting fancy.
soundManager.useFlashBlock = true;

// disable debug mode after development/testing..
soundManager.debugMode = true;

{literal}
// demo only..
function setTheme(sTheme) {
  var o = document.getElementsByTagName('ul')[0];
  o.className = 'playlist'+(sTheme?' '+sTheme:'');
  return false;
}
{/literal}
</script>

<div id="sm2-container">
 <!-- flash movie is added here -->
</div>

<ul class="playlist">
  <li><a href={concat("content/download/",$attribute.contentobject_id,"/",$attribute.content.contentobject_attribute_id,"/",$attribute.content.original_filename)|ezurl()}>{$attribute.content.original_filename|wash()}<span class="comment">(featureblend.com)</span></a></li>
</ul>

<div id="control-template">
  <!-- control markup inserted dynamically after each link -->
  <div class="controls">
   <div class="statusbar">
    <div class="loading"></div>
     <div class="position"></div>
   </div>
  </div>
  <div class="timing">
   <div id="sm2_timing" class="timing-data">
    <span class="sm2_position">%s1</span> / <span class="sm2_total">%s2</span></div>
  </div>
  <div class="peak">
   <div class="peak-box"><span class="l"></span><span class="r"></span>
   </div>
  </div>
 </div>

 <div id="spectrum-container" class="spectrum-container">
  <div class="spectrum-box">
   <div class="spectrum"></div>
  </div>
 </div>