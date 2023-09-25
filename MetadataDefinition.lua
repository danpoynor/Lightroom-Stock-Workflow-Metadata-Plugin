--[[----------------------------------------------------------------------------

LrMetadataProvider

Adds custom metadata fields, available only in Lightroom.
There can be only one such item in a plug-in. It contains a
string, the name of the Lua file (metadata definition script)
that defines the fields. See “Adding custom metadata” on
page 71.

Can be combined with other services (export services,
export filters) or can be the only service provided by the
plug-in.

------------------------------------------------------------------------------]]

return {

	metadataFieldsForPhotos = {

		{
			id = 'StockImageStatus',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageStatus=Image Status",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'potentially',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStatus/PotentialStockPick=Potential Stock Pick",
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStatus/StockPick=Stock Pick: Working File",
				},
				{
				value = 'yesoriginal',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStatus/StockPickOriginal=Stock Pick: Original Photo",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStatus/Rejected=Reject",
				},
				{
				value = 'undecided',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStatus/Undesided=Undecided/Hold",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageWorkflowStatus',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageWorkflowStatus=Workflow Status",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'needswork',
				title = LOC "$$$/StockWorkflow/Fields/StockImageWorkflowStatus/NeedsWork=Needs Work",
				},
				{
				value = 'needslotsofwork',
				title = LOC "$$$/StockWorkflow/Fields/StockImageWorkflowStatus/Unresolved=Needs Too Much Work/Hold",
				},
				{
				value = 'readytosubmit',
				title = LOC "$$$/StockWorkflow/Fields/StockImageWorkflowStatus/ReadyToSubmit=Ready To Submit",
				},
				{
				value = 'submitionprocessing',
				title = LOC "$$$/StockWorkflow/Fields/StockImageWorkflowStatus/Submitted=Submitted: Processing",
				},
				{
				value = 'submitionaccepted',
				title = LOC "$$$/StockWorkflow/Fields/StockImageWorkflowStatus/Accepted=Submitted: Accepted",
				},
				{
				value = 'submitionrejected',
				title = LOC "$$$/StockWorkflow/Fields/StockImageWorkflowStatus/Rejected=Submitted: Rejected",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageStatusNotes',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageStatusNotes=Status Notes",
			dataType = 'string',
			searchable = true,
		},

		--  Work Status
		
		{
			id = 'StockImageNeedsLogosRemoved',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsLogosRemoved=Remove Logos",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsLogosRemoved/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsLogosRemoved/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsLogosRemoved/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageNeedsSpotsRemoved',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsSpotsRemoved=Retouch Spots",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsSpotsRemoved/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsSpotsRemoved/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsSpotsRemoved/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageNeedsModelsRetouched',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsModelsRetouched=Retouch Models",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsModelsRetouched/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsModelsRetouched/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsModelsRetouched/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageNeedsCroppingStraightening',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsCroppingStraightening=Crop or Straighten",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'needcropping',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsCroppingStraightening/NeedsToBeCropped=Needs To Be Cropped",
				},
				{
				value = 'needsstraightening',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsCroppingStraightening/NeedsToBeStraightened=Needs To Be Straightened",
				},
				{
				value = 'bothcropandstraighten',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsCroppingStraightening/NeedsBoth=Needs Both",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsCroppingStraightening/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsCroppingStraightening/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageNeedsLensCorrection',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsLensCorrection=Lens Correction",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsLensCorrection/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsLensCorrection/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsLensCorrection/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageNeedsColorCorrection',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsColorCorrection=Color Correction",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsColorCorrection/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsColorCorrection/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsColorCorrection/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageNeedsBackgroundRemoved',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsBackgroundRemoved=Isolate Objects",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsBackgroundRemoved/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsBackgroundRemoved/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsBackgroundRemoved/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageNeedsObjectsRemoved',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsObjectsRemoved=Remove Objects",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsObjectsRemoved/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsObjectsRemoved/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsObjectsRemoved/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageNeedsOtherRetouching',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsOtherRetouching=Other Retouching",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsOtherRetouching/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsOtherRetouching/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNeedsOtherRetouching/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageRetouchingNote',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/RetouchingNote=Retouching Notes",
			dataType = 'string',
			searchable = true,
		},
		{
			id = 'StockImageReleaseNeeded',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageReleaseNeeded=Release Needed",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageReleaseNeeded/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageReleaseNeeded/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageReleaseNeeded/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageKeywordsNeeded',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageKeywordsNeeded=Keywords Needed",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageKeywordsNeeded/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageKeywordsNeeded/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageKeywordsNeeded/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageOtherWorkNeeded',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageOtherWorkNeeded=Other Needed",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageOtherWorkNeeded/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageOtherWorkNeeded/No=No",
				},
				{
				value = 'completed',
				title = LOC "$$$/StockWorkflow/Fields/StockImageOtherWorkNeeded/Completed=Completed",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageNoteOtherWorkNeeded',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNoteOtherWorkNeeded=Other Work Needed",
			dataType = 'string',
			searchable = true,
		},

		--  Stock Filter Info
		
		{
			id = 'StockImageType',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageType=Image Type",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'illustration',
				title = LOC "$$$/StockWorkflow/Fields/StockImageType/Illustration=Illustration",
				},
				{
				value = 'photography',
				title = LOC "$$$/StockWorkflow/Fields/StockImageType/Photography=Photography",
				},
				{
				value = 'video',
				title = LOC "$$$/StockWorkflow/Fields/StockImageType/Video=Video",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageLicenseType',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType=License Type",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'royaltyfree',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/RoyaltyFree=Royalty-Free (RF)",
				},
				{
				value = 'rightsmanaged',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/RightsManaged=Rights-Managed (RM)",
				},
				{
				value = 'creativecommons',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/CreativeCommons=Creative Commons (CC)",
				},
				{
				value = 'publicdomain',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/PublicDomain=Public Domain (PD)",
				},
				{
				value = 'editorial',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/Editorial=Editorial",
				},
				{
				value = 'editorialdocumentary',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/EditorialDocumentary=Editorial - Documentary",
				},
				{
				value = 'editorialnews',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/EditorialNews=Editorial - News",
				},
				{
				value = 'editorialsports',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/EditorialSports=Editorial - Sports",
				},
				{
				value = 'editorialentertainment',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/EditorialEntertainment=Editorial - Entertainment",
				},
				{
				value = 'editorialhistorical',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/EditorialHistorial=Editorial - Historical",
				},
				{
				value = 'editorialfineart',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/EditorialFineArt=Editorial - Fine Art",
				},
				{
				value = 'otherlicensetype',
				title = LOC "$$$/StockWorkflow/Fields/StockImageLicenseType/Other=Other",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageFormat',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageFormat=Image Format",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'horzontal',
				title = LOC "$$$/StockWorkflow/Fields/StockImageFormat/Horizontal=Horizontal",
				},
				{
				value = 'vertical',
				title = LOC "$$$/StockWorkflow/Fields/StockImageFormat/Vertical=Vertical",
				},
				{
				value = 'panoramichorizontal',
				title = LOC "$$$/StockWorkflow/Fields/StockImageFormat/PanoramicHorizontal=Panoramic - Horizontal",
				},
				{
				value = 'panoramicvertical',
				title = LOC "$$$/StockWorkflow/Fields/StockImageFormat/PanoramicVertical=Panoramic - Vertical",
				},
				{
				value = 'square',
				title = LOC "$$$/StockWorkflow/Fields/StockImageFormat/Square=Square",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageStyle',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageStyle=Image Style",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'fullframe',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/FullFrame=Full Frame",
				},
				{
				value = 'portrait',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/Portrait=Portrait",
				},
				{
				value = 'landscape',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/Landscape=Landscape",
				},
				{
				value = 'lifestyle',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/Lifestyle=Lifestyle",
				},
				{
				value = 'object',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/Object=Object",
				},
				{
				value = 'objectisolatedonwhite',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/ObjectIsolatedOnWhite=Object Isolated On White",
				},
				{
				value = 'objectwithcolorbackground',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/ObjectOnColorBackground=Object On Color Background",
				},
				{
				value = 'blur',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/Blur=Blur",
				},
				{
				value = 'indoors',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/Indoors=Indoors",
				},
				{
				value = 'outdoors',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/Outdoors=Outdoors",
				},
				{
				value = 'sparse',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/Sparse=Sparse",
				},
				{
				value = 'abstract',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/Abstract=Abstract",
				},
				{
				value = 'stilllife',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/StillLife=Still Life",
				},
				{
				value = 'copyspace',
				title = LOC "$$$/StockWorkflow/Fields/StockImageStyle/CopySpace=Copy Space",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImagePredominantColor',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor=Predominant Color",
			dataType = 'enum',
			values = {
				{
				value = 'red',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Red=Red",
				},
				{
				value = 'vermillion',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Vermillion=Vermillion (Red-Orange)",
				},
				{
				value = 'orange',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Orange=Orange",
				},
				{
				value = 'amber',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Amber=Amber (Orange-Yellow)",
				},
				{
				value = 'yellow',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Yellow=Yellow",
				},
				{
				value = 'chartreuse',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Chartreuse=Chartreuse (Yellow-Green)",
				},
				{
				value = 'green',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Green=Green",
				},
				{
				value = 'teal',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Teal=Teal (Green-Blue)",
				},
				{
				value = 'blue',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Blue=Blue",
				},
				{
				value = 'violet',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Violet=Violet (Blue-Purple)",
				},
				{
				value = 'purple',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Purple=Purple",
				},
				{
				value = 'magenta',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Magenta=Magenta (Purple-Red)",
				},
				{
				value = 'black',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Black=Black",
				},
				{
				value = 'white',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/White=White",
				},
				{
				value = 'gray',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Gray=Gray",
				},
				{
				value = 'brown',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Brown=Brown",
				},
				{
				value = 'pink',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Pink=Pink",
				},
				{
				value = 'cyan',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Cyan=Cyan",
				},
				{
				value = 'tan',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Tan=Tan",
				},
				{
				value = 'psychedelic',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Psychedelic=Psychedelic",
				},
				{
				value = 'duotone',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Duotone=Duotone",
				},
				{
				value = 'sepiatone',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePredominantColor/Sepiatone=Sepiatone",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageViewpoint',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageViewpoint=Viewpoint",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'aerial',
				title = LOC "$$$/StockWorkflow/Fields/StockImageViewpoint/Aerial=Aerial",
				},
				{
				value = 'clos-up',
				title = LOC "$$$/StockWorkflow/Fields/StockImageViewpoint/CloseUp=Close-Up",
				},
				{
				value = 'macro',
				title = LOC "$$$/StockWorkflow/Fields/StockImageViewpoint/Macro=Macro",
				},
				{
				value = 'fromabove',
				title = LOC "$$$/StockWorkflow/Fields/StockImageViewpoint/FromAbove=From Above",
				},
				{
				value = 'frombelow',
				title = LOC "$$$/StockWorkflow/Fields/StockImageViewpoint/FromBelow=From Below",
				},
				{
				value = 'frombehind',
				title = LOC "$$$/StockWorkflow/Fields/StockImageViewpoint/FromBehind=From Behind",
				},
				{
				value = 'lookingatcamera',
				title = LOC "$$$/StockWorkflow/Fields/StockImageViewpoint/LookingAtCamera=Looking At Camera",
				},
				{
				value = 'lookingawayfromcamera',
				title = LOC "$$$/StockWorkflow/Fields/StockImageViewpoint/LookingAwayFromCamera=Looking Away From Camera",
				},
			},
			searchable = true,
			browsable = true,
		},

		-- People Filter Info
		
		{
			id = 'StockImageNumberOfPeople',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNumberOfPeople=Number Of People",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'nopeople',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNumberOfPeople/No People=No People",
				},
				{
				value = 'oneperson',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNumberOfPeople/OnePerson=1 Person",
				},
				{
				value = 'twopeople',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNumberOfPeople/TwoPeople=2 People",
				},
				{
				value = 'threepeople',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNumberOfPeople/ThreePeople=3 People",
				},
				{
				value = 'fourpeople',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNumberOfPeople/FourPeople=4 People",
				},
				{
				value = 'fivepeople',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNumberOfPeople/FivePeople=5 People",
				},
				{
				value = 'morethansixpeople',
				title = LOC "$$$/StockWorkflow/Fields/StockImageNumberOfPeople/MoreThan6People=More Than 6 People",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImagePeopleGender',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleGender=People Gender",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'males',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleGender/MaleOnly=Male(s) Only",
				},
				{
				value = 'females',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleGender/FemalesOnly=Female(s) Only",
				},
				{
				value = 'androgynousgenders',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleGender/Androgynous=Androgynous",
				},
				{
				value = 'othergenders',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleGender/OtherGenders=Other Gender(s)",
				},
				{
				value = 'multiplegenders',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleGender/MultipleGenders=Multiple Genders",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImagePeopleAge',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleAge=People Age",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'allchildren',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleAge/AllChildren=All Children (0-12 years)",
				},
				{
				value = 'baby',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleAge/Baby=Baby (0-23 months)",
				},
				{
				value = 'child',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleAge/Child=Child (2-9 years)",
				},
				{
				value = 'preteen',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleAge/PreTeen=Pre-Teen (10-12 years)",
				},
				{
				value = 'teenager',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleAge/Teenager=Teenager (12-17 years)",
				},
				{
				value = 'youngadult',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleAge/YoungAdult=Young Adult (18-29 years)",
				},
				{
				value = 'midadult',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleAge/MidAdult=Mid-Adult (30-39 years)",
				},
				{
				value = 'middleaged',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleAge/MiddleAged=Middle-Aged (40-59 years)",
				},
				{
				value = 'senior',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleAge/Senior=Senior (60+ years)",
				},
				
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImagePeopleEthnicity',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleEthnicity=People Ethnicity",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'africandescent',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleEthnicity/AfricanDescent=African Descent/Black",
				},
				{
				value = 'asian',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleEthnicity/Asian=Asian",
				},
				{
				value = 'caucasian',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleEthnicity/Caucasian=Caucasian",
				},
				{
				value = 'hispanic',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleEthnicity/Hispanic=Hispanic/Latino",
				},
				{
				value = 'middleeastern',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleEthnicity/MiddleEastern=Middle Eastern",
				},
				{
				value = 'nativeamerican',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleEthnicity/NativeAmerican=Native American",
				},
				{
				value = 'pacificislander',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleEthnicity/PacificIslander=Pacific Islander",
				},
				{
				value = 'mixedraceperson',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleEthnicity/MixedRacePerson=Mixed Race Person",
				},
				{
				value = 'multiethnic',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleEthnicity/Multiethnic=Multi-Ethnic Group",
				},
				{
				value = 'otherethnicity',
				title = LOC "$$$/StockWorkflow/Fields/StockImagePeopleEthnicity/OtherEthnicity=Other Ethnicity",
				},
			},
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageContainsNudity',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageContainsNudity=Contains Nudity",
			dataType = 'enum',
			values = {
				{
				value = 'notsure',
				title = '',
				},
				{
				value = 'yes',
				title = LOC "$$$/StockWorkflow/Fields/StockImageContainsNudity/Yes=Yes",
				},
				{
				value = 'no',
				title = LOC "$$$/StockWorkflow/Fields/StockImageContainsNudity/No=No",
				},
			},
			searchable = true,
			browsable = true,
		},

		-- Submission Info
		
		{
			id = 'StockImageSitesSubmittedTo',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageSitesSubmittedTo=Sites Submitted To",
			dataType = 'string',
			searchable = true,
		},
		{
			id = 'StockImageSubmissionNotes',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageSubmissionNotes=Submission Notes",
			dataType = 'string',
			searchable = true,
		},
		{
			id = 'StockImageNotesToStockSite',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageNotesToStockSite=Notes to Stock Site",
			dataType = 'string',
			searchable = true,
		},
		{
			id = 'StockImageCategory',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageCategory=Image Category",
			dataType = 'string',
			searchable = true,
			browsable = true,
		},
		{
			id = 'StockImageKeywordsOrdered',
			version = 1.01,
			title = LOC "$$$/StockWorkflow/Fields/StockImageKeywordsOrdered=Ordered Keywords",
			dataType = 'string',
			searchable = true,
		},


	},
	
	schemaVersion = 1, -- must be a number, preferably a positive integer

}