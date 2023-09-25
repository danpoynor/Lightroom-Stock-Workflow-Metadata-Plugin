--[[----------------------------------------------------------------------------

LrMetadataTagsetFactory

Adds a tagset of predefined metadata fields. The user can
select defined metadata tagsets from a menu in the
Metadata panel. Some tagsets are supplied by Lightroom;
this allows your plug-in to supply additional tagsets. See
“Adding custom metadata tagsets” on page 76.

------------------------------------------------------------------------------]]

return{

	-- title = LOC "$$$/StockWorkflow/Tagset/Title=Stock Workflow Metadata",
	title = "Stock Workflow Metadata",
	id = 'StockWorkflowTagset',

	items = {
		-- 'com.danpoynor.stockworkflowplugin.*',
		'com.adobe.separator',
		{ formatter = "com.adobe.label", label = "File Info" },
		'com.adobe.filename',
		'com.adobe.copyname',
		'com.adobe.folder',
		{ formatter = 'com.adobe.title', height_in_lines=2 , topLabel=true },
		{ formatter = 'com.adobe.caption', height_in_lines=2 , topLabel=true },

		'com.adobe.separator',
		{ formatter = "com.adobe.label", label = "Stock Image Status" },
		'com.danpoynor.stockworkflowplugin.StockImageStatus',
		'com.danpoynor.stockworkflowplugin.StockImageWorkflowStatus',
		{ formatter = 'com.danpoynor.stockworkflowplugin.StockImageStatusNotes', height_in_lines=2 , topLabel=true },

		'com.adobe.separator',
		{ formatter = "com.adobe.label", label = "Work Needed" },
		'com.danpoynor.stockworkflowplugin.StockImageNeedsLogosRemoved',
		'com.danpoynor.stockworkflowplugin.StockImageNeedsSpotsRemoved',
		'com.danpoynor.stockworkflowplugin.StockImageNeedsModelsRetouched',
		'com.danpoynor.stockworkflowplugin.StockImageNeedsCroppingStraightening',
		'com.danpoynor.stockworkflowplugin.StockImageNeedsLensCorrection',
		'com.danpoynor.stockworkflowplugin.StockImageNeedsColorCorrection',
		'com.danpoynor.stockworkflowplugin.StockImageNeedsBackgroundRemoved',
		'com.danpoynor.stockworkflowplugin.StockImageNeedsObjectsRemoved',
		'com.danpoynor.stockworkflowplugin.StockImageNeedsOtherRetouching',
		{ formatter = 'com.danpoynor.stockworkflowplugin.RetouchingNote', height_in_lines=2 , topLabel=true },
		'com.adobe.separator',
		'com.danpoynor.stockworkflowplugin.StockImageReleaseNeeded',
		'com.danpoynor.stockworkflowplugin.StockImageKeywordsNeeded',
		'com.danpoynor.stockworkflowplugin.StockImageOtherWorkNeeded',
		'com.danpoynor.stockworkflowplugin.StockImageOtherWorkNote',
		{ formatter = 'com.danpoynor.stockworkflowplugin.StockImageNoteOtherWorkNeeded', height_in_lines=2 , topLabel=true },

		'com.adobe.separator',
		{ 'com.adobe.label', label = LOC "$$$/stockworkflowplugin/SampleLabel=Stock Filter Info" },
		'com.danpoynor.stockworkflowplugin.StockImageType',
		'com.danpoynor.stockworkflowplugin.StockImageLicenseType',
		'com.danpoynor.stockworkflowplugin.StockImageFormat',
		'com.danpoynor.stockworkflowplugin.StockImageStyle',
		'com.danpoynor.stockworkflowplugin.StockImagePredominantColor',
		'com.danpoynor.stockworkflowplugin.StockImageViewpoint',
		'com.adobe.separator',
		'com.danpoynor.stockworkflowplugin.StockImageNumberOfPeople',
		'com.danpoynor.stockworkflowplugin.StockImagePeopleGender',
		'com.danpoynor.stockworkflowplugin.StockImagePeopleAge',
		'com.danpoynor.stockworkflowplugin.StockImagePeopleEthnicity',
		'com.danpoynor.stockworkflowplugin.StockImageContainsNudity',

		'com.adobe.separator',
		{ 'com.adobe.label', label = LOC "$$$/stockworkflowplugin/SampleLabel=Submission Info" },
		{ formatter = 'com.danpoynor.stockworkflowplugin.StockImageSitesSubmittedTo', height_in_lines=2 , topLabel=true },
		{ formatter = 'com.danpoynor.stockworkflowplugin.StockImageSubmissionNotes', height_in_lines=2 , topLabel=true },
		'com.adobe.separator',
		{ formatter = 'com.danpoynor.stockworkflowplugin.StockImageNotesToStockSite', height_in_lines=2 , topLabel=true },
		{ formatter = 'com.danpoynor.stockworkflowplugin.StockImageCategory', height_in_lines=2 , topLabel=true },
		{ formatter = 'com.danpoynor.stockworkflowplugin.StockImageKeywordsOrdered', height_in_lines=40 , topLabel=true },

	},
}
