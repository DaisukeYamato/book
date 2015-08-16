from apihelper import info;
import odbchelper;

# # 4.2
# li = [];
# info(li);

# # 4.3
# info(odbchelper);
# info(odbchelper, 30);
# info(odbchelper, 30, 0);

# # 4.4
# info(odbchelper);
# info(odbchelper, 12);
# info(odbchelper, collapse=0);
# info(spacing=15, object=odbchelper);

# # 4.5
# print type(1);
# li = [];
# print type(li);
# print type(odbchelper);
# import types;
# print type(odbchelper) == types.ModuleType;

# # 4.6
# print str(1);
# horsemen = ['war', 'pestilence', 'famine'];
# print horsemen;
# horsemen.append('Powerbuilder');
# print str(horsemen);
# print str(odbchelper);
# print str(None);

# # 4.7
# li = [];
# print dir(li);
# d = {};
# print dir(d);
# print dir(odbchelper);

# # 4.8
# import string;
# print string.punctuation;
# string.join;
# print callable(string.punctuation);
# print callable(string.join);
# print string.join.__doc__;

# # 4.9
# import __builtin__;
# info(__builtin__, 20);

# # 4.10
# li = ["Larry", "Curly"];
# print li.pop
# print getattr(li, "pop");
# print getattr(li, "append")("Moe");ZZ
# print li;
# print getattr({}, "clear");
# print getattr((), "pop");

# # 4.11
# import odbchelper;
# print odbchelper.buildConnectionString;
# print getattr(odbchelper, "buildConnectionString");
# object = odbchelper;
# method = "buildConnectionString";
# print getattr(object, method);
# print type(getattr(object, method)); 
# import types;
# print type(getattr(object, method)) == types.FunctionType;
# print callable(getattr(object, method));

# # 4.12
# import statsout;

# def output(data, format="text"):
#     output_function = getattr(statsout,"output_%s" % format);
#     return output_function(data);

# # 4.13 (getattr Default Values)
# import statsout;

# def output(data, format="text"):
#     output_function = getattr(statsout, "output_%s" % format, statsout.output_text);
#     return output_function(data);

# # 4.14 (Introducing List Filtering)
# li = ["a", "mpilgrm", "foo", "b", "c", "d", "d"];
# print [elem for elem in li if len(elem) > 1];
# print [elem for elem in li if elem != "b"];
# print [elem for elem in li if li.count(elem) == 1];

# # 4.15 (Introducing and)
# print 'a' and 'b';
# print '' and 'b';
# print 'a' and 'b' and 'c';

# # 4.16 (Introducint or)
# print 'a' or 'b';
# print '' or 'b';
# print '' or [] or {};
# def sidefx():
#     print "in sidefx()";
#     return 1;
# print 'a' or sidefx();

# # 4.17 (Introducing the and-or Trick)
# a = "first";
# b = "second";
# print 1 and a or b;
# print 0 and a or b;

# # 4.18 (When the and-or Trick Fails)
# a = "";
# b = "second";
# print 1 and a or b;

# # 4.19 (Using the and-or Trick Safely)
# a = "";
# b = "second";
# print (1 and [a] or [b])[0];

# # 4.20 (Introducing lambda Functions)
# def f(x):
#     return x*2;
# print f(3);
# g = lambda x: x*2;
# print g(3);
# print (lambda x: x*2)(3);

# # 4.21 (split With No Arguments)
# s = "this    is\na\ttest";
# print s;
# print s.split();
# print " ".join(s.split());

# # 4.22 (Getting a doc string Dynamically)
# import odbchelper;
# object = odbchelper;
# method = 'buildConnectionString';
# print getattr(object, method);
# print getattr(object, method).__doc__;

# # 4.23 (Why Use str on ad doc string?)
# def foo(): print 2;
# print foo();
# print foo.__doc__ == None;
# print str(foo.__doc__);

# # 4.24 (Introducing ljust)
# s = 'buildConnectionString';
# print s.ljust(30) + ' info';
# print s.ljust(20) + ' info';

# # 4.25 (Printing a List)
# li = ['a', 'b', 'c'];
# print "\n".join(li);

# Summary
li = [];
print info(li);
######################################################################
#
