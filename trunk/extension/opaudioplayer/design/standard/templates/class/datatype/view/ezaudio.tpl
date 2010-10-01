{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<div class="block">
    <label>{'Audio player type'|i18n( 'design/standard/class/datatype/ezaudio' )}:</label>
    <p>
	{if $class_attribute.data_text1|ne('') }
		{ezini($class_attribute.data_text1, 'TitleText', 'opaudioplayer.ini')|i18n( 'design/standard/class/datatype/ezaudio' )}
	{else}
		<i>{'Empty'|i18n( 'design/standard/class/datatype' )}</i>
	{/if}
    </p>
</div>

<div class="block">
    <label>{'Max file size'|i18n( 'design/standard/class/datatype' )}:</label>
    <p>{$class_attribute.data_int1}&nbsp;MB</p>
</div>