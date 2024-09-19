/**
 * @license Copyright (c) 2003-2019, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	config.language = nv_lang_interface;
	// config.enterMode = CKEDITOR.ENTER_BR;
	config.entities = false;
	config.extraPlugins = 'video,eqneditor,switchbar,tbvdownload,googledocs';
	// config.uiColor = '#AADC6E';
};
