--[[----------------------------------------------------------------------------

Info.lua
Summary information for creator filter plug-in

------------------------------------------------------------------------------]]

return {

	LrSdkVersion = 3.0,
	LrSdkMinimumVersion = 2.0,
	LrToolkitIdentifier = 'com.danpoynor.stockworkflowplugin',
	-- LrPluginName = LOC "$$$/StockWorkflow/PluginName=Stock Workflow Plugin",
	LrPluginName = "Stock Workflow Plugin",
	-- LrPluginName = "My Metadata Sample",
	LrPluginInfoUrl = "http://www.danpoynor.com",

	-- Add the Metadata Definition File
	LrMetadataProvider = 'MetadataDefinition.lua',

	-- Add the Metadata Tagset File
	-- LrMetadataTagsetFactory = 'MetadataTagset.lua',
	LrMetadataTagsetFactory = {
		'MyMetadataTagset.lua',
		-- 'MyMetadataTagsetAll.lua'
	},

	-- Add the entry for the Plug-in Manager Dialog
	-- LrPluginInfoProvider = 'PluginInfoProvider.lua',

	-- Initialize the plugin
	LrInitPlugin = 'PluginInit.lua',

	VERSION = { major=1, minor=0, revision=0, build=0000001, },

}
