# import commands;

# # 8.4 Sample test of sgmllib.py
# import commands;
# # does not work...
# print commands.getoutput('python c:/Python27/Lib/sgmllib.py c:/Users/daisuke.yamato/work/102_ref/programming/python/diveintopython-5.4/diveintopython-5.4/html/diveintopython.html');

# # 8.5 Introducint urllib
# import urllib;
# # sock = urllib.urlopen("http://diveintopython.org/");
# sock = urllib.urlopen("http://diveintopython.net/");
# htmlSource = sock.read();
# sock.close();
# print htmlSource;

# # 8.6 Introducing urllister.py

# # 8.7 Using urllister.py
# import urllib, urllister;
# usock = urllib.urlopen("http://diveintopython.net/");
# parser = urllister.URLLister();
# parser.feed(usock.read());
# usock.close();
# parser.close();
# for url in parser.urls: print url;

# # 8.8 Introducing BaseHTMLProcessor
# pass;

# # 8.5 locals and globals p.109
# def unknown_starttag(self, tag, attrs):
#     strattrs = "".join([' %s="%s"' % (key, value) for key, value in attrs]);
#     self.pieces.append("<%(tag)s%(strattrs)s>" % locals());

# # 8.10 Introducing locals
# def foo(arg):
#     x = 1;
#     print locals();
# foo(7);
# foo('bar');

# # 8.11 Introducing globals
# if __name__ == "__main__":
#     for k, v in globals().items():
#         print k, "=", v;

# # 8.12 locals is read-only, globals is not
# def foo(arg):
#     x = 1;
#     print locals();
#     locals()["x"] = 2;
#     print "x=",x

# z = 7;
# print "z=", z;
# foo(3);
# globals()["z"] = 8;
# print "z=", z;

# # 8.13 Introducing dictionary-based string formatting
# params = {"server":"mpilgrim", "database":"master", "uid":"sa", "pwd":"secret"};
# print "%(pwd)s" % params;
# print "%(pwd)s is not a good password for %(uid)s" % params;
# print "%(database)s of mind, %(database)s of body" % params;

# # 8.14 Dictonary-based string formatting in BaseHTMLProcessor.py
# def handle_comment(self, text):
#     self.pieces.append("<!--%(text)s-->" % locals());

# # 8.15 More dictionary-based string formatting
# # def unknown_starttag(self, tag, attrs):
# def unknown_starttag(tag, attrs):
#     strattrs = "".join([' %s="%s"' % (key, value) for key, value in attrs]);
#     #self.pieces.append("<%(tag)s%(startattrs)s>" % locals);
#     pieces = [];
#     pieces.append("<%(tag)s%(strattrs)s>" % locals());
#     print pieces;

# tag = 'a';
# attrs = [('href', 'index.html'), ('title', 'Go to home page')];
# unknown_starttag(tag=tag, attrs=attrs);

# # 8.16 Quoting attribute values
# htmlSource = """
# <html>
# <head>
# <title>Test page</title>
# </head>
# <body>
# <ul>
# <li><a href=index.html>Home</a></li>
# <li><a href=toc.html>Table of contents</a></li>
# <li><a href=history.html>Revision history</a></li>
# </body>
# </html>
# """;
# from BaseHTMLProcessor import BaseHTMLProcessor;
# parser = BaseHTMLProcessor();
# parser.feed(htmlSource);
# print parser.output();

# # 8.17 Handling specific tags
# def start_pre(self, attrs):
#     self.verbatim += 1;
#     self.unknown_starttag("pre", attrs);

# def end_pre(self):
#     self.unknown_endtag("pre");
#     self.verbatim -= 1;

# # 8.18 SGMLParser
# def finish_starttag(self, tag, attrs):
#     try:
#         method = getattr(self, 'start_' + tag);
#     except AttributeError:
#         try:
#             method = getattr(self, 'do_' + tag);
#         except AttributeError:
#             self.unknown_starttag(tag, attrs);
#             return -1;
#         else:
#             self.handle_starttag(tag, method, attrs);
#             return 0;
#     else:
#         self.stack.append(tag);
#         self.handle_starttag(tag, method, attrs);
#         return 1;

# def handle_starttag(self, tag, method, attrs):
#     method(attrs);

# # 8.19 Overriding the handle_data method
# def handle_data(self, text):
#     self.pieces.append(self.verbatim and text or self.process(text));

# # # 8.20 The translate function, part 1
# def translate(url, dialectName="chef"):
#     import urllib;
#     sock = urllib.urlopen(url);
#     htmlSource = sock.read();
#     sock.close();
#     # 8.21 The translate function, part 2: curiouser and curiouser
#     parserName = "%sDialectizer" % dialectName.capitalize();
#     parserClass = globals()[parserName];
#     parser = parserClass();
#     # 8.22 The translate function, part 3
#     parser.feed(htmlSource);
#     parser.close();
#     return parser.output();

######################################################################
# endline
