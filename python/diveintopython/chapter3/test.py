# p.23
li = ['a', 'b', 'mpilgrim', 'z', 'example'];
# print li[-1];
# print li[-3];  
# # slicing
# print li[1:3];
# print li[1:-1];
# print li[0:3];
# # 3.9
# print li[:3];
# print li[3:];
# print li[:];

# # 3.10
# li.append("new");
# print li;
# li.insert(2, "new");
# print li;
# li.extend(["two", "elements"]);
# print li;

# # 3.11
# li = ['a', 'b', 'c'];
# li.extend(['d', 'e', 'f']);
# print li;
# print len(li);
# print li[-1];
# li = ['a', 'b', 'c'];
# li.append(['d', 'e', 'f']);
# print li;
# print len(li);
# print li[-1];

# # 3.12
# li = ['a', 'b', 'new', 'mpilgrim', 'z', 'example', 'new', 'two', 'elements'];
# print li.index("example");
# print li.index("new");
# # print li.index("c");
# print "c" in li;

# # 3.13
# li = ['a', 'b', 'new', 'mpilgrim', 'z', 'example', 'new', 'two', 'elements'];
# li.remove("z");
# print li;
# li.remove("new");
# print li;
# # li.remove("c"); # ValueError
# li.pop();
# print li;

# # 3.14
# li = ['a', 'b', 'mpilgrim'];
# li = li + ['example', 'new'];
# print li;
# li += ['two'];
# print li;
# li = [1, 2] * 3;
# print li;

# # 3.15
# t = ("a", "b", "mpilgrim", "z", "example");
# # print t;
# # print t[0];
# # print t[-1];
# # print t[1:3];

# # 3.16
# t = ("a", "b", "mpilgrim", "z", "example");
# # t.append("new"); # AttributeError

# # 3.17
# if __name__ == "__main__":
#     myParams = {"server":"mpilgrim", \
#                     "database":"master", \
#                     "uid":"sa", \
#                     "pwd":"secret" \
#                 };

# # 3.20
# print range(7);
# (MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY) = range(7);
# print MONDAY;
# print TUESDAY;
# print SUNDAY;

# # 3.21
# k = "uid";
# v = "sa";
# print "%s=%s" % (k, v);

# # 3.22
# uid = "sa";
# pwd = "secret";
# print pwd + " is not a good password for " + uid;
# print "%s is not a good password for %s" % (pwd, uid);
# userCount = 6;
# print "Users connected: %d" % (userCount, );
# print "Users connected: " + userCount;

# # 3.23
# print "Today's stock price: %f" % 50.4625;
# print "Today's stock price: %.2f" % 50.4625;
# print "Change since yesterday: %+.2f" % 1.5;

# # 3.24
# li = [1, 9, 8, 4];
# print [elem*2 for elem in li];
# print li;
# li = [elem*2 for elem in li];
# print li;

# # 3.25
# params = {"server":"mpilgrim", "database":"master", "uid":"sa", "pwd":"secret"};
# print params.keys();
# print params.values();
# print params.items();

# # 3.26
# params = {"server":"mpilgrim", "database":"master", "uid":"sa", "pwd":"secret"};
# print params.items();
# print [k for k, v in params.items()];
# print [v for k, v in params.items()];
# print ["%s=%s" % (k, v) for k, v in params.items()];

# # 3.27
# params = {"server":"mpilgrim", "database":"master", "uid":"sa", "pwd":"secret"};
# print ["%s=%s" % (k, v) for k, v in params.items()];
# print ";".join(["%s=%s" % (k, v) for k, v in params.items()]);

# 3.28
li = ['server=mpilgrim', 'uid=sa', 'database=master', 'pwd=secret'];
s = ";".join(li);
print s;
print s.split(";");
print s.split("l", 1);

######################################################################
# Endline
