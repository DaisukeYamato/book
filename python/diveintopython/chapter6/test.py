# # 6.1 (Opening a Non-Existent File)
# # fsock = open("/notthere", "r");
# try:
#     fsock = open("/notthere");
# except IOError:
#     print "The file does not exist, exitting gracefully";

# print "This line will always print";

# # 6.2 (Supporting Platform-Specific Functionality)
# # Bind the name getpass to the appropriate function
# try:
#     import termios, TERMIOS;
# except ImportError:
#     try:
#         import msvcrt;
#     except:
#         try:
#             from EasyDialogs import AskPassword;
#         except ImportError:
#             getpass = default_getpass;
#         else:
#             getpass = AskPassword;
#     else:
#         getpass = win_getpass;
# else:
#     getpass = unis_getpass;

# # 6.3 (Opening a File)
# f = open("/music/_singles/kairo.mp3", "rb");
# print f;
# print f.mode;
# print f.name;

# # 6.4 (Reading a File)
# print f;
# print f.tell();
# print f.seek(-128, 2);
# print f.tell();
# tagData = f.read(128);
# print tagData;
# print f.tell();

# # 6.5 (Closing a File)
# print f
# print f.closed;
# f.close();
# print f;
# print f.closed;
# f.seek(0);
# f.tell();
# f.read();
# f.close();

# # 6.6 (File Objects in MP3FileInfo)
# try:
#     fsock = open(filename, "rb", 0);
#     try:
#         fsock.seek(-128, 2);
#         tagdata = fsock.read(128);
#     finally:
#         fsock.close();
#     pass;
# except IOError:
#     pass;

# # 6.7 (Writing to Files)
# logfile = open('test.log', 'w');
# logfile.write('test succeeded');
# logfile.close();
# print file('test.log').read();
# logfile = open('test.log', 'a');
# logfile.write('line 2');
# logfile.close();
# print file('test.log').read();

# # 6.8 (Introducint the for Loop)
# li = ['a', 'b', 'e'];
# for s in li:
#     print s;
# print "\n".join(li);

# # 6.9 (Simple Counters)
# for i in range(5):
#     print i;
# li = ['a', 'b', 'c', 'd', 'e'];
# for i in range(len(li)):
#     print li[i];

# # 6.10 (Iterating Through a Dictionary)
# import os;
# for k, v in os.environ.items():
#     print "%s=%s" % (k, v);
# print; 
# print "\n".join(["%s=%s" % (k, v) for k, v in os.environ.items()]);

# # 6.12 (Introducint sys.modules)
# import sys;
# print '\n'.join(sys.modules.keys());

# # 6.13 (Using sys.modules)
# import sys;
# import fileinfo;
# print '\n'.join(sys.modules.keys());
# print fileinfo;
# print sys.modules["fileinfo"];

# # 6.14 (The __module__ Class Attribute)
# import sys;
# from fileinfo import MP3FileInfo;
# print MP3FileInfo.__module__;
# print sys.modules[MP3FileInfo.__module__];

# # 6.15 (sys.modules in fileinfo.py)
# def getFileInfoClass(filename, module=sys.modules[FileInfo.__module__]):
#     "get file info class from filename extension"
#     subclass = "%sFileInfo" % os.path.splitext(filename)[1].upper()[1:];
#     return hasattr(module, subclass) and getattr(module, subclass) or FileInfo;

# # 6.16 (Constructing Pathnames)
# import os;
# print os.path.join("c:\\music\\ap\\", "mahadeva.mp3");
# print os.path.join("c:\\music\\ap", "mahadeva.mp3");
# print os.path.expanduser("~");
# print os.path.join(os.path.expanduser("~"), "Python");

# # 6.17 (Splitting Pathnames)
# import os;
# print os.path.split("c:\\music\\ap\\mahadeva.mp3");
# (filepath, filename) = os.path.split("c:\\music\\ap\\mahadeva.mp3");
# print filepath;
# print filename;
# (shortname, extension) = os.path.splitext(filename);
# print shortname;
# print extension;

# # 6.18 (Listing Directories)
# import os;
# print os.listdir("c:\\"); print;
# dirname = "c:\\";
# print os.listdir(dirname); print;
# print [f for f in os.listdir(dirname)
#        if os.path.isfile(os.path.join(dirname, f))];
# print;
# print [f for f in os.listdir(dirname) 
#        if os.path.isdir(os.path.join(dirname, f))]; 
# print;

# # 6.19 (Listing Directories in fileinfo.py)
# def listDirectory(directory, fileExtList):
#     "get list of file info objects for files of particular extensions"
#     fileList = [os.path.normcase(f)
#                 for f in os.listdir(directory)];
#     fileList = [os.path.join(directory, f) 
#                 for f in fileList
#                 if os.path.splitext(f)[1] in fileExtList];

# # 6.20 (Listing Directories with glob)
# import os;
# print os.listdir("c:\\Boot");
# import glob;
# print glob.glob('c:\\Boot\\*.DAT');

# # 6.21 (listDirectory)
# def listDirectory(directory, fileExtList):
#     "get list of file infor objects for files of particular extensions"
#     fileList = [os.path.normcase(f)
#                 for f in os.listdir(directory)];
#     fileList = [os.path.join(directory, f)
#                 for f in fileList
#                 if os.path.splitext(f)[1] in fileExtList];
#     def getFileInfoClass(filename, module=sys.modules[FIleInfo.__module__]):
#         "get file info class from filename extension"
#         subclass = "%sFileInfo" % os.path.splitext(filename)[1].upper()[1:]
#         return hasattr(module, subclass) and getattr(module, subclass) or FileInfo;
#     return[getFileInfoClass(f)(f) for f in fileList];



######################################################################
# endline
