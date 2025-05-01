user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true); //Enables userChrome.css
user_pref("browser.link.open_newwindow.restriction", 0); //Forces websites to open in a new windows instead of new tab
user_pref("signon.rememberSignons", false); //Disables "remember password" prompts
user_pref("general.autoScroll", true); //Enables autoscroll by middleclicking any page
user_pref("browser.tabs.warnOnClose", true); //Enables warning before closing multiple tabs
user_pref("browser.startup.homepage", "about:home"); //Sets "about:home" as the startup homepage
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false); //Disable ads in the homepage
user_pref("sidebar.position_start", false); //Moves the sidebar to the right
user_pref("browser.toolbars.bookmarks.visibility", "newtab"); //Bookmarks toolbar apears only on new tabs
user_pref("browser.aboutConfig.showWarning", false); //Remove warning when editing aboutconfig
user_pref("accessibility.typeaheadfind.enablesound", false); //Removes the alarm sound when "Ctrl f" doesn't match anything
user_pref("browser.urlbar.update2.engineAliasRefresh", true); //Enables custom search engines
user_pref("browser.tabs.closeWindowWithLastTab", false); //Firefox doesn't closes if you close the last tab
user_pref("browser.ctrlTab.sortByRecentlyUsed", true); // Ctrl tab swaps between the last two used tabs
user_pref("browser.tabs.insertRelatedAfterCurrent", false); // Tabs always open to the right, in the last spot

/* Enables the browser toobox */
user_pref("devtools.chrome.enabled", true);
user_pref("devtools.debugger.remote-enabled", true);

/* Disables pocker */
user_pref("extensions.pocket.enabled", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
