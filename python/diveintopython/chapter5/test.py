# # 5.2 (import module vs. from module import)
# # import types;
# # print types.FunctionType;
# # # print FunctionType; # error;
# from types import FunctionType;
# print FunctionType;

# # 5.3 (The Simplest Python Class)
# class Loaf:
#     pass;

# # 5.4 (Defining the FileInfo Class)
# from UserDict import UserDict;

# class FileInfo(UserDDict):

# # 5.5 (Initializing the FileInfo Class)
# class FileInfo(UserDict):
#     "store file metadata"
#     def __init__(self, filename=None):
#         pass;

# # 5.6 (Coding the FileInfo Class)
# from UserDict import UserDict;
# class FileInfo(UserDict):
#     "store file metadata"
#     def __init__(self, filename=None):
#         UserDict.__init__(self);
#         self["name"] = filename;

# # 5.7 (Creating a FileInfo Instance)
# import fileinfo;

# f = fileinfo.FileInfo("c:/Users/daisuke.yamato/work/101_book/python/diveintopython/chapter5/test.py");
# print f.__class__;
# print f.__doc__;
# print f;

# # 5.8 (Trying to Implement a Memory Leak)
# import fileinfo;
# def leakmem():
#     f = fileinfo.FileInfo("c:/Users/daisuke.yamato/work/101_book/python/diveintopython/chapter5/test.py");
# for i in range(100):
#     leakmem();

# # 5.9 (Defining the UserDict Class)
# class UserDict:
#     def __init__(self, dict=None):
#         self.data = {};
#         if dict is not None: self.update(dict);

# # 5.10 (UserDict Normal Methods)
# def clear(self): self.data.clear();
# def copy(self):
#     if self.__class__ is UserDict:
#         return UserDIct(self.data);
#     import copy;
#     return copy.copy(self);
# def keys(self): return self.data.keys();
# def items(self): return self.data.items();
# def values(self): return self.data.values();

# # 5.11 (Inheriting Directly from Built-In Datatype dict)
# class FileInfo(dict):
#     "store file metadata"
#     def __init__(self, filename=None):
#         self["name"] = filename;

# #  5.12 (The __getitem__ Special Method)
# def __getitem__(self, key): return self.data[key];
# f = fileinfo.FileInfo("/music/_singles/kairo.mp3");
# print f;
# print f.__getitem__("name");
# print f["name"];

# # 5.13 (The __setitem__ Special Method)
# def __setitem__(self, key, item): self.data[key] = item;
# print f;
# f.__setitem__("genre", 31);
# print f;
# f["genre"] = 32;
# print f;

# # 5.14 (Overriding __setitem__ in MP3FileInfo)
# def __setitem__(self, key, item):
#     if key == "name" and item:
#         self.__parse(item);
#     FileInfo.__setitem__(self, key, item);

# # 5.15 (Setting an MP3FileInfo's name)
# import fileinfo
# mp3file = fileinfo.MP3FileInfo();
# print mp3file;
# mp3file["name"] = "/music/_singles/kairo.mp3";
# print mp3file;
# mp3file["name"] = "/music/_singles/sidewinder.mp3";
# print mp3file;

# 5.16 (More Special Methods in UserDict)
# def __repr__(self): return repr(self.data);
# d = {"data", 1};
# print d;
# print repr(d);
# def __cmp__(self, dict):
#     if isinstance(dict, UserDict):
#         return cmp(self.data, dict.data);
#     else:
#         return cmp(self.data, dict);
# def __len__(self): return len(self.data);
# def __delitem__(self, key): del self.data[key];

# # 5.17 (Introducint Class Attributes)
# class MP3FileInfo(FIleInfo):
#     "store ID3v1.0 MP3 tags"
#     tagDataMap = {"title"   : (  3,  33, stripnulls),
#                   "artist"  : ( 33,  63, stripnulls),
#                   "album"   : ( 63,  93, stripnulls), ...}
# import fileinfo;
# print fileinfo.MP3FileInfo;
# print fileinfo.MP3FileInfo.tagDataMap;
# m = fileinfo.MP3FileInfo();
# print m.tagDataMap;

class counter:
    count = 0;
    def __init__(self):
        self.__class__.count += 1;

print counter.count;
c = counter();
print c.count;
d = counter();
print d.count;
print c.count;
print counter.count;



######################################################################
# endline
