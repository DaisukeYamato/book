# import
import os;

os.chdir('c:/Users/daisuke.yamato/work/101_book/python/headFirstPython/chapter5');

# # p.142
# with open('james.txt') as jaf:
#     data = jaf.readline();
#     james = data.strip().split(',');
# with open('julie.txt') as juf:
#     data = juf.readline();
#     julie = data.strip().split(',');
# with open('mikey.txt') as mif:
#     data = mif.readline();
#     mikey = data.strip().split(',');
# with open('sarah.txt') as saf:
#     data = saf.readline();
#     sarah = data.strip().split(',');

# print(james);
# print(julie);
# print(mikey);
# print(sarah);

# p.150
def sanitize(time_string):
    if '-' in time_string:
        splitter = '-';
    elif ':' in time_string:
        splitter = ':';
    else:
        return(time_string);
    (mins, secs) = time_string.split(splitter);

    return(mins + '.' + secs);

# with open('james.txt') as jaf: data = jaf.readline();
# james = data.strip().split(',');
# with open('julie.txt') as juf: data = juf.readline();
# julie = data.strip().split(',');
# with open('mikey.txt') as mif: data = mif.readline();
# mikey = data.strip().split(',');
# with open('sarah.txt') as saf: data = saf.readline();
# sarah = data.strip().split(',');

# clean_james = [];
# clean_julie = [];
# clean_mikey = [];
# clean_sarah = [];

# for each_t in james:
#     clean_james.append(sanitize(each_t));
# for each_t in julie:
#     clean_julie.append(sanitize(each_t));
# for each_t in mikey:
#     clean_mikey.append(sanitize(each_t));
# for each_t in sarah:
#     clean_sarah.append(sanitize(each_t));

# print(sorted(clean_james));
# print(sorted(clean_julie));
# print(sorted(clean_mikey));
# print(sorted(clean_sarah));

# # p.156
# dirty = ['2-22', '2:22', '2.22'];
# clean = [sanitize(t) for t in dirty];
# print(clean);
# clean = [float(s) for s in clean];
# print(clean);
# clean = [float(sanitize(t)) for t in ['2-22', '3:33', '4.44']];
# print(clean);

# # p.159
# print(sorted( [sanitize(t) for t in james] ));
# print(sorted( [sanitize(t) for t in julie] ));
# print(sorted( [sanitize(t) for t in mikey] ));
# print(sorted( [sanitize(t) for t in sarah] ));

# p.170
def get_coach_data(filename):
    try:
        with open(filename) as f:
            data = f.readline();
        return(data.strip().split(','));
    except IOError as ioerr:
        print('File error: ' + str(ioerr));
        return(None);

sarah = get_coach_data('sarah.txt');

######################################################################
