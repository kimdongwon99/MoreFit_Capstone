!function(){var a={},b=function(b){for(var c=a[b],e=c.deps,f=c.defn,g=e.length,h=new Array(g),i=0;i<g;++i)h[i]=d(e[i]);var j=f.apply(null,h);if(void 0===j)throw"module ["+b+"] returned undefined";c.instance=j},c=function(b,c,d){if("string"!=typeof b)throw"module id must be a string";if(void 0===c)throw"no dependencies for "+b;if(void 0===d)throw"no definition function for "+b;a[b]={deps:c,defn:d,instance:void 0}},d=function(c){var d=a[c];if(void 0===d)throw"module ["+c+"] was undefined";return void 0===d.instance&&b(c),d.instance},e=function(a,b){for(var c=a.length,e=new Array(c),f=0;f<c;++f)e[f]=d(a[f]);b.apply(null,e)},f={};f.bolt={module:{api:{define:c,require:e,demand:d}}};var g=c,h=function(a,b){g(a,[],function(){return b})};h("4",tinymce.util.Tools.resolve),g("1",["4"],function(a){return a("tinymce.PluginManager")}),g("2",[],function(){var a=function(a){a.addCommand("mcePrint",function(){a.getWin().print()})};return{register:a}}),g("3",[],function(){var a=function(a){a.addButton("print",{title:"Print",cmd:"mcePrint"}),a.addMenuItem("print",{text:"Print",cmd:"mcePrint",icon:"print"})};return{register:a}}),g("0",["1","2","3"],function(a,b,c){return a.add("print",function(a){b.register(a),c.register(a),a.addShortcut("Meta+P","","mcePrint")}),function(){}}),d("0")()}();