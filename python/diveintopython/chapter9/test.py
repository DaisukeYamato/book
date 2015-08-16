# test.py

# # 9.5 Loading an XML document (a sneak peek)
# from xml.dom import minidom;
# xmldoc = minidom.parse('./binary.xml');

# # 9.7 Packages are modules, too
# from xml.dom import minidom;
# print minidom, "\n"; 
# print minidom.Element, "\n";
# from xml.dom.minidom import Element;
# print Element, "\n";
# print minidom.Element, "\n";
# from xml import dom;
# print dom, "\n";
# import xml;
# print xml;

# # # 9.8 Loading an XML document (for real this time)
# from xml.dom import minidom;
# xmldoc = minidom.parse('c:/Users/daisuke.yamato/work/101_book/python/diveintopython/chapter9/binary.xml');
# print xmldoc;
# print xmldoc.toxml();
# # 9.9 Getting child nodes
# print xmldoc.childNodes;
# print xmldoc.childNodes[0];
# print xmldoc.firstChild;
# # 9.10 toxml works on any node
# print;
# documentNode = xmldoc.firstChild;
# print documentNode.toxml();
# print;
# grammarNode = xmldoc.lastChild;
# print grammarNode.toxml();
# print;
# # 9.11 Child nodes can be text
# print grammarNode.childNodes;
# print grammarNode.firstChild.toxml();
# print grammarNode.childNodes[1].toxml();
# print ;
# print grammarNode.childNodes[3].toxml();
# print grammarNode.lastChild.toxml();
# # 9.12 Drilling down all the way to text
# print grammarNode;
# refNode = grammarNode.childNodes[1];
# print refNode;
# print refNode.childNodes;
# pNode = refNode.childNodes[1];
# print pNode;
# print pNode.toxml();
# print pNode.firstChild;
# print pNode.firstChild.data;

# # 9.13 Introducing unicode
# s = u'Dive in';
# s;
# print s;

# # 9.14 Storing non-ASCII characters
# s = u'La Pe\xf1a';
# # print s;
# print s.encode('latin-1');

# 9.15 

# # 9.16 Effects of setting the default encoding
# import sys;
# print sys.getdefaultencoding();
# s = u'La Pe\xf1a';
# print s;

# # 9.19 Parsing russiansample.xml
# from xml.dom import minidom;
# xmldoc = minidom.parse('russiansample.xml');
# title = xmldoc.getElementsByTagName('title')[0].firstChild.data;
# # print title;
# convertedtitle = title.encode('koi8-r');
# print convertedtitle;

# 9.20 binary.xml

# # 9.21 Introducing getElementsByTagName
# from xml.dom import minidom;
# xmldoc = minidom.parse('binary.xml');
# reflist = xmldoc.getElementsByTagName('ref');
# print reflist;
# print reflist[0].toxml();
# print reflist[1].toxml();
# # 9.22 Every element is searchable
# firstref = reflist[0];
# print firstref.toxml();
# plist = firstref.getElementsByTagName("p");
# print plist;
# print plist[0].toxml();
# print plist[1].toxml();
# # 9.23 Searching is actually recursive
# plist = xmldoc.getElementsByTagName("p");
# print plist;
# print plist[0].toxml();
# print plist[1].toxml();
# print plist[2].toxml();

# 9.24 Accessing element attributes
from xml.dom import minidom;
xmldoc = minidom.parse('binary.xml');
reflist = xmldoc.getElementsByTagName('ref');
bitref = reflist[0];
print bitref.toxml();
print bitref.attributes;
print bitref.attributes.keys();
print bitref.attributes.values();
print bitref.attributes["id"];
# 9.25 Accessing individual attributes
a = bitref.attributes["id"];
print a;
print a.name;
print a.value;

######################################################################
# endline
