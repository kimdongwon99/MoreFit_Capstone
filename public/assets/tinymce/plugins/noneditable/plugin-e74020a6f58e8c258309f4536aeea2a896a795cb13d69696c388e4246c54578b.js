!function(){var a={},b=function(b){for(var c=a[b],e=c.deps,f=c.defn,g=e.length,h=new Array(g),i=0;i<g;++i)h[i]=d(e[i]);var j=f.apply(null,h);if(void 0===j)throw"module ["+b+"] returned undefined";c.instance=j},c=function(b,c,d){if("string"!=typeof b)throw"module id must be a string";if(void 0===c)throw"no dependencies for "+b;if(void 0===d)throw"no definition function for "+b;a[b]={deps:c,defn:d,instance:void 0}},d=function(c){var d=a[c];if(void 0===d)throw"module ["+c+"] was undefined";return void 0===d.instance&&b(c),d.instance},e=function(a,b){for(var c=a.length,e=new Array(c),f=0;f<c;++f)e[f]=d(a[f]);b.apply(null,e)},f={};f.bolt={module:{api:{define:c,require:e,demand:d}}};var g=c,h=function(a,b){g(a,[],function(){return b})};h("3",tinymce.util.Tools.resolve),g("1",["3"],function(a){return a("tinymce.PluginManager")}),g("4",["3"],function(a){return a("tinymce.util.Tools")}),g("5",[],function(){var a=function(a){return a.getParam("noneditable_noneditable_class","mceNonEditable")},b=function(a){return a.getParam("noneditable_editable_class","mceEditable")},c=function(a){var b=a.getParam("noneditable_regexp",[]);return b&&b.constructor===RegExp?[b]:b};return{getNonEditableClass:a,getEditableClass:b,getNonEditableRegExps:c}}),g("2",["4","5"],function(a,b){var c=function(a){return function(b){return(" "+b.attr("class")+" ").indexOf(a)!==-1}},d=function(a,b,c){return function(d){var e=arguments,f=e[e.length-2],g=f>0?b.charAt(f-1):"";if('"'===g)return d;if(">"===g){var h=b.lastIndexOf("<",f);if(h!==-1){var i=b.substring(h,f);if(i.indexOf('contenteditable="false"')!==-1)return d}}return'<span class="'+c+'" data-mce-content="'+a.dom.encode(e[0])+'">'+a.dom.encode("string"==typeof e[1]?e[1]:e[0])+"</span>"}},e=function(a,c,e){var f=c.length,g=e.content;if("raw"!==e.format){for(;f--;)g=g.replace(c[f],d(a,g,b.getNonEditableClass(a)));e.content=g}},f=function(d){var f,g,h="contenteditable";f=" "+a.trim(b.getEditableClass(d))+" ",g=" "+a.trim(b.getNonEditableClass(d))+" ";var i=c(f),j=c(g),k=b.getNonEditableRegExps(d);d.on("PreInit",function(){k.length>0&&d.on("BeforeSetContent",function(a){e(d,k,a)}),d.parser.addAttributeFilter("class",function(a){for(var b,c=a.length;c--;)b=a[c],i(b)?b.attr(h,"true"):j(b)&&b.attr(h,"false")}),d.serializer.addAttributeFilter(h,function(a){for(var b,c=a.length;c--;)b=a[c],(i(b)||j(b))&&(k.length>0&&b.attr("data-mce-content")?(b.name="#text",b.type=3,b.raw=!0,b.value=b.attr("data-mce-content")):b.attr(h,null))})})};return{setup:f}}),g("0",["1","2"],function(a,b){return a.add("noneditable",function(a){b.setup(a)}),function(){}}),d("0")()}();
