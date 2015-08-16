# test.py
# # 11.2 Downloading a feed the quick-and-dirty way
# import urllib;
# data = urllib.urlopen('http://diveintomark.net/xml/atom.xml').read();
# print data;

# # 11.3 Debugging HTTP
# import httplib;
# httplib.HTTPConnection.debuglevel = 1;
# import urllib;
# feeddata = urllib.urlopen('http://diveintomark.net/xml/atom.xml').read();

# 11.4 Introducing urllib2
import httplib;
httplib.HTTPConnection.debuglevel = 1;
import urllib2;
request = urllib2.Request('http://diveintomark.net/xml/atom.xml');
opener = urllib2.build_opener();
feeddata = opener.open(request).read();
# 11.5 Adding headers with the Request
print request;
print request.get_full_url();
request.add_header('User-Agent',
                   'OpenAnything/1.0 +http://diveintopython.net/');
feeddata = opener.open(request).read();
# 11.6 Testing Last-Modified
import urllib2;
# request = urllib2.Request('http://diveintomark.net/xml/atom.xml');
request = urllib2.Request('http://ocupc1.hep.osaka-cu.ac.jp/');
opener = urllib2.build_opener();
firstdatastream = opener.open(request);
print firstdatastream.headers.dict;
request.add_header('If-Modified-Since', 
                   firstdatastream.headers.get('Last-Modified'));
seconddatastream = opener.open(request);
print seconddatastream.headers.dict;
print;
# # 11.7 Defining URL handlers
# class DefaultErrorHandler(urllib2.HTTPDefaultErrorHandler):
#     def http_error_default(self, req, fp, code, msg, headers):
#         result = urllib2.HTTPError(
#             req.get_full_url(), code, msg, headers, fp);
#         result.status = code;
#         return result;
# 11.8 Using custom URL handlers
print request.headers;
import openanything;
opener = urllib2.build_opener(
    openanything.DefaultErrorHandler());
seconddatastream = opener.open(request);
# print seconddatastream.status;
# print seconddatastream.read();
######################################################################
