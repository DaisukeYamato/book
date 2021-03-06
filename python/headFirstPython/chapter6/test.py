# import
import os;

os.chdir('c:/Users/daisuke.yamato/work/101_book/python/headFirstPython/chapter6');

def sanitize(time_string):
    if '-' in time_string:
        splitter = '-';
    elif ':' in time_string:
        splitter = ':';
    else:
        return(time_string);
    (mins, secs) = time_string.split(splitter);

    return(mins + '.' + secs);

# def get_coach_data(filename):
#     try:
#         with open(filename) as f:
#             data = f.readline();
#         return(data.strip().split(','));
#     except IOError as ioerr:
#         print('File error: ' + str(ioerr));
#         return(None);

# sarah = get_coach_data('sarah2.txt');

# # (sarah_name, sarah_dob) = sarah.pop(0), sarah.pop(0);

# # print(sarah_name + "'s fastest times are: " + 
# #       str(sorted(set([sanitize(t) for t in sarah]))[0:3]));

# sarah_data = {};
# sarah_data['Name'] = sarah.pop(0);
# sarah_data['DOB']  = sarah.pop(0);
# sarah_data['Times'] = sarah;
# print(sarah_data['Name'] + "'s fastest times are:" +
#       str(sorted(set([sanitize(t) for t in sarah_data['Times']]))[0:3]));

# # p.186
# def get_coach_data(filename):
#     try:
#         with open(filename) as f:
#             data = f.readline();
#         templ = data.strip().split(',');
#         return({'Name': templ.pop(0), 
#                 'DOB': templ.pop(0),
#                 'Times': str(sorted(set(sanitize(t) for t in templ))[0:3])});
#     except IOError as ioerr:
#         print('File error: ' + str(ioerr));
#         return(None);

# james = get_coach_data('james2.txt');
# julie = get_coach_data('julie2.txt');
# mikey = get_coach_data('mikey2.txt');
# sarah = get_coach_data('sarah2.txt');

# print(james['Name'] + "'s fastest times are:" + james['Times']);
# print(julie['Name'] + "'s fastest times are:" + julie['Times']);
# print(mikey['Name'] + "'s fastest times are:" + mikey['Times']);
# print(sarah['Name'] + "'s fastest times are:" + sarah['Times']);

# # p.196
# class Athlete:
#     def __init__(self, a_name, a_dob=None, a_times=[]):
#         self.name = a_name;
#         self.dob = a_dob;
#         self.times = a_times;

#     def top3(self):
#         return(sorted(set([sanitize(t) for t in self.times]))[0:3]);

# def get_coach_data(filename):
#     try:
#         with open(filename) as f:
#             data = f.readline();
#         templ = data.strip().split(',');
#         return(Athlete(templ.pop(0), templ.pop(0), templ));
#     except IOError as ioerr:
#         print('File error: ' + str(ioerr));
#         return(None);

# james = get_coach_data('james2.txt');
# julie = get_coach_data('julie2.txt');
# mikey = get_coach_data('mikey2.txt');
# sarah = get_coach_data('sarah2.txt');

# print(james.name + "'s fastest times are: " + str(james.top3()));
# print(julie.name + "'s fastest times are: " + str(julie.top3()));
# print(mikey.name + "'s fastest times are: " + str(mikey.top3()));
# print(sarah.name + "'s fastest times are: " + str(sarah.top3()));

# # p.200
# class Athlete:
#     def __init__(self, a_name, a_dob=None, a_times=[]):
#         self.name = a_name;
#         self.dob = a_dob;
#         self.times = a_times;

#     def top3(self):
#         return(sorted(set([sanitize(t) for t in self.times]))[0:3]);
    
#     def add_time(self, time_value):
#         self.times.append(time_value);

#     def add_times(self, list_of_times):
#         self.times.extend(list_of_times);

# # def get_coach_data(filename):
# #     try:
# #         with open(filename) as f:
# #             data = f.readline();
# #         templ = data.strip().split(',');
# #         return(Athlete(templ.pop(0), templ.pop(0), templ));
# #     except IOError as ioerr:
# #         print('File error: ' + str(ioerr));
# #         return(None);

# vera = Athlete('Vera Vi');
# vera.add_time('1.31');
# print(vera.top3());
# vera.add_times(['2.22', "1-21", '2:22']);
# print(vera.top3());

# p.208
class AthleteList(list):
    def __init__(self, a_name, a_dob=None, a_times=[]):
        list.__init__([]);
        self.name = a_name;
        self.dob = a_dob;
        self.extend(a_times);
    def top3(self):
        return(sorted(set([sanitize(t) for t in self]))[0:3]);

vera = AthleteList('Vera Vi');
vera.append('1.31');
print(vera.top3());
vera.extend(['2.22', "1-21", '2:22']);
print(vera.top3());


######################################################################
