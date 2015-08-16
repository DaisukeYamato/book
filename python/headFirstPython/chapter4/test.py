# import
import os;

os.chdir('c:/Users/daisuke.yamato/work/101_book/python/headFirstPython/chapter4');

# # p.109
# man = [];
# other = [];

# try:
#     data = open('sketch.txt');

#     for each_line in data:
#         try:
#             (role, line_spoken) = each_line.split(':', 1);
#             line_spoken = line_spoken.strip();
#             if role == 'Man':
#                 man.append(line_spoken);
#             elif role == 'Other Man':
#                 other.append(line_spoken);
#         except ValueError:
#             pass;
#     data.close();
# except IOError:
#     print('The datafile is missing!');

# print(man);
# print(other);

# # p.112
# man = [];
# other = [];

# try:
#     data = open('sketch.txt');
#     for each_line in data:
#         try:
#             (role, line_spoken) = each_line.split(':', 1);
#             line_spoken = line_spoken.strip();
#             if role == 'Man':
#                 man.append(line_spoken);
#             elif role == 'Other Man':
#                 other.append(line_spoken);
#         except ValueError:
#             pass;
#     data.close();
# except IOError:
#     print('The datafile is missing!');

# try:
#     man_file = open('man_data.txt', 'w');
#     other_file = open('other_data.txt', 'w');
    
#     print(man, file=man_file);
#     print(other, file=other_file);

#     man_file.close();
#     other_file.close();
# except IOError:
#     print('File error.');

# # p.118
# try:
#     data = open('missing.txt');
#     print(data.readline(), end='');
# # except IOError:
# #     print('File error');
# except IOError as err:
#     print('File error: ' + str(err));
# finally:
#     if 'data' in locals():
#         data.close();

# # # p.122
# man = [];
# other = [];
# try:
#     data = open('sketch.txt');
#     for each_line in data:
#         try:
#             (role, line_spoken) = each_line.split(':', 1);
#             line_spoken = line_spoken.strip();
#             if role == 'Man':
#                 man.append(line_spoken);
#             elif role == 'Other Man':
#                 other.append(line_spoken);
#         except ValueError:
#             pass;
#     data.close();
# except IOError:
#     print('The datafile is missing!');
# try:
#     with open('man_data.txt', 'w') as man_file:
#         print(man, file=man_file);
#     with open('other_data.txt', 'w') as other_file:
#         print(other, file=other_file);
# except IOError as err:
#     print('File error: ' + str(err));

with open('man_data.txt') as mdf:
    print(mdf.readline());
