#!/usr/bin/env osascript -l JavaScript
// ================================================================= -*- js -*-
// @file    oo-frontmost-file-path
// @brief   Return the full file path of the document in the front window
// @author  Michael Hucka <mhucka@caltech.edu>
// @website https://github.com/mhucka/omnioutliner-hacks
// ============================================================================

function run() {
    var app = Application.currentApplication();
    app.includeStandardAdditions = true;
    var OmniOutliner = Application('OmniOutliner');
    var frontmost = OmniOutliner.documents[0];
    console.log('' + frontmost.file());
}
