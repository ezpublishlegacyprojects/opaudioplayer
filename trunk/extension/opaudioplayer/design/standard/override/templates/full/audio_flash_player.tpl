{* Audio/Flash Player - Full view *}

<div class="border-box">
<div class="border-tl"><div class="border-tr"><div class="border-tc"></div></div></div>
<div class="border-ml"><div class="border-mr"><div class="border-mc float-break">

    <div class="content-view-full">
        <div class="class-article">
	        <div class="attribute-header">
	            <h1>{$node.data_map.name.content|wash()}</h1>
	        </div>
			<p class="date">
	             {$node.object.published|l10n(shortdatetime)}
	        </p>
	    </div>

		<div class="attribute-short">
        	{attribute_view_gui attribute=$node.data_map.description}
        </div>

        <div class="attribute-audio-file">
            {attribute_view_gui attribute=$node.data_map.file}
        </div>
    </div>

</div></div></div>
<div class="border-bl"><div class="border-br"><div class="border-bc"></div></div></div>
</div>

