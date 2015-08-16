# test.py

# # 10.1 Parsing XML from a file
# from xml.dom import minidom;
# fsock = open('binary.xml');
# xmldoc = minidom.parse(fsock);
# fsock.close();
# print xmldoc.toxml();

# # 10.2 Parsing XML from a URL
# from xml.dom import minidom;
# import urllib;
# usock = urllib.urlopen('http://slashdot.org/slashdot.rdf');
# xmldoc = minidom.parse(usock);
# usock.close();
# print xmldoc.toxml();

# # 10.3 Parsing XML from a string (the easy but inflexible way)
# from xml.dom import minidom;
# contents = "<grammar><ref id='bit'><p>0</p><p>1</p></ref></grammar>";
# xmldoc = minidom.parseString(contents);
# print xmldoc.toxml();

# # 10.4 Introducing StringIO
# from xml.dom import minidom;
# import StringIO;
# contents = "<grammar><ref id='bit'><p>0</p><p>1</p></ref></grammar>";
# ssock = StringIO.StringIO(contents);
# print ssock.read();
# print ssock.read();
# ssock.seek(0);
# print ssock.read(15);
# print ssock.read(15);
# print ssock.read();
# ssock.close();

# # 10.5 Parsing XML from a string (the file-like object way)
# from xml.dom import minidom;
# import StringIO;
# contents = "<grammar><ref id='bit'><p>0</p><p>1</p></ref></grammar>";
# ssock = StringIO.StringIO(contents);
# xmldoc = minidom.parse(ssock);
# ssock.close();
# print xmldoc.toxml();

# # 10.6 openAnything
# def openAnything(source):
#     # try to open with urllib (if source is http, ftp, or file URL)
#     import urllib;
#     try:
#         return urllib.urlopen(source);
#     except (IOError, OSError):
#         pass;
    
#     # try to open with native open function (if source is pathname)
#     try:
#         return open(source);
#     except (IOError, OSError):
#         pass;
    
#     # treat source as string
#     import StringIO;
#     return StringIO.StringIO(str(source));

# # 10.7 Using openAnything in kgp.py
# class KantGenerator:
#     def _load(self, source):
#         sock = toolbox.openAnything(source);
#         xmldoc = minidom.parse(sock).documentElement;
#         sock.close();
#         return xmldoc;

# # 10.8 Introducing stdout and stderr
# for i in range(3):
#     print 'Dive in';
# import sys;
# for i in range(3):
#     sys.stdout.write('Dive in');
# print;
# for i in range(3):
#     sys.stderr.write('Dive in');

# # 10.11 Printing to stderr
# print 'entering function';
# import sys;
# print >> sys.stderr, 'entering function';

# 10.12 Chaining commands

# # 10.14 loadGrammar
# def loadGrammar(self, grammar):
#     self.grammar = self._load(grammar);
#     self.refs = {};
#     for ref in self.grammar.getElementsByTagName("ref"):
#         self.refs[ref.attributes["id"].value] = ref;

# # 10.15 Using the ref element cache
# def do_xref(self, node):
#     id = node.attributes["id"].value;
#     self.parse(self.randomChildElement(self.refs[id]));

# # 10.16 Finding direct child elements
# def randomChildElement(self, node):
#     choices = [e for e in node.childNodes
#                if e.nodeType == e.ELEMENT_NODE];
#     chosen = random.choice(choices);
#     return chosen;

# # 10.17 Class names of parsed XML objects
# from xml.dom import minidom;
# xmldoc = minidom.parse('kant.xml');
# print xmldoc;
# print xmldoc.__class__;
# print xmldoc.__class__.__name__;

# # 10.18 parse, a generic XML node dispatcher
# def parse(self, node):
#     parseMethod = getattr(self, "parse_%s" % node.__class__.__name__);
#     parseMethod(node);

# # 10.19 Functions called by the parse dispatcher
# def parse_Document(self, node):
#     self.parse(node.documentElement);

# def parse_Text(self, node):
#     text = node.data;
#     if self.capitalizeNextWord:
#         self.pieces.append(text[0].upper());
#         self.pieces.append(text[1:]);
#         self.capitalizeNextWord = 0;
#     else:
#         self.pieces.append(text);

# def parse_Comment(self, node):
#     pass;

# def parse_Element(self, node):
#     handlerMethod = getattr(self, "do_%s" % node.tagName);
#     handlerMethod(node);

# # 10.20 Introducing sys.argv
# # argecho.py
# import sys;
# for arg in sys.argv:
#     print arg;

# 10.22 Introducing getopt
import sys;
import getopt;
def main(argv):
    grammar = "kant.xml";
    try:
        opts, args = getopt.getopt(argv, "hg:d", ["help", "grammar="]);
    except getopt.GetoptError:
        usage();
        sys.exit(2);
        
if __name__ == "__main__":
    main(sys.argv[1:]);
######################################################################
# endline

