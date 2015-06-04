//=require 'evercookie/swfobject-2.2.min'
//=require 'evercookie/evercookie'

if (typeof(WWAnalytics.init) == "function") {
    if (WWAnalytics.init_started != true) {
        WWAnalytics.init();
    }
    WWAnalytics.init_started = true;
}
