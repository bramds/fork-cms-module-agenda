{include:{$BACKEND_CORE_PATH}/Layout/Templates/Head.tpl}
{include:{$BACKEND_CORE_PATH}/Layout/Templates/StructureStartModule.tpl}

<div class="pageTitle">
	<h2>{$lblMedia|ucfirst}: {$lblAddVideo}</h2>
</div>

{form:addVideo}
	<div class="tabs">
		<ul>
			<li><a href="#tabContent">{$lblContent|ucfirst}</a></li>
		</ul>

		<div id="tabContent">
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td id="leftColumn">
						<div class="box">
							<div class="heading">
								<h3>{$lblTitle|ucfirst}<abbr title="{$lblRequiredField}">*</abbr></h3>
							</div>
							<div class="options">
								{$txtTitle} {$txtTitleError}
							</div>
						</div>

						<div class="box">
							<div class="heading">
								<h3>{$lblUrl|ucfirst}(Youtube/Vimeo)<abbr title="{$lblRequiredField}">*</abbr></h3>
							</div>
							<div class="options">
								{$txtVideo} {$txtVideoError}
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div class="fullwidthOptions">
		{option:showAgendaVideos}
		<a href="{$var|geturl:'media'}&agenda_id={$item.id}" class="button">
			<span>{$lblBackToOverview|ucfirst}</span>
		</a>
		{/option:showAgendaVideos}

		<div class="buttonHolderRight">
			<input id="addButton" class="inputButton button mainButton" type="submit" title="add" value="{$lblSave|ucfirst}" />
		</div>
	</div>
{/form:addVideo}

{include:{$BACKEND_CORE_PATH}/Layout/Templates/StructureEndModule.tpl}
{include:{$BACKEND_CORE_PATH}/Layout/Templates/Footer.tpl}