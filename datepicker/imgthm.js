$(function(){ $('<div style="position: absolute; left: 300px;" />').insertAfter('#demoHeader').themeswitcher({height: 100, onOpen:function(){ $(window.parent.document).find('iframe').height('15em'); $(document).trigger('click');}, onClose:function(){ $(window.parent.document).find('iframe').height('5em');} }); });

