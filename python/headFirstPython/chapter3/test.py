# data = open('sketch.txt');

# for each_line in data:
#     try:
#         (role, line_spoken) = each_line.split(':', 1);
#         print(role, end='');
#         print(' said: ', end='');
#         print(line_spoken, end='');
#     except:
#         pass;

# data.close();

# # p97
# import os;

# if os.path.exists('sketch.txt'):
#     data = open('sketch.txt');
    
#     for each_line in data:
#         if not each_line.find(':') == -1:
#             (role, line_spoken) = each_line.split(':', 1);
#             print(role, end='');
#             print(' said: ', end='');
#             print(line_spoken, end='');
    
#     data.close();
# else:
#     print('The data file is missing!');

# # p.98
# try:
#     data = open('sketch.txt');

#     for each_line in data:
#         try:
#             (role, line_spoken) = each_line.split(':', 1);
#             print(role, end='');
#             print(' said: ', end='');
#             print(line_spoken, end='');
#         except:
#             pass;
#     data.close();
# except:
#     print('The data file is missing!');

# p.102
try:
    data = open('sketch.txt');

    for each_line in data:
        try:
            (role, line_spoken) = each_line.split(':', 1);
            print(role, end='');
            print(' said: ', end='');
            print(line_spoken, end='');
        except ValueError:
            pass;

    data.close();
except IOError:
    print('The data file is missing!');
