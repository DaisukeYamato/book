# # 7.1 (Matching at the End of a String)
# s = '100 NORTH MAIN ROAD';
# print s.replace('ROAD', 'RD.');
# s = '100 NORTH BROAD ROAD';
# print s.replace('ROAD', 'RD.');
# print s[:-4] + s[-4:].replace('ROAD', 'RD.');
# import re;
# print re.sub('ROAD$', 'RD.', s);

# # 7.2 (Matching Whole Words)
# import re;
# s = '100 BROAD';
# print re.sub('ROAD$', 'RD.', s);
# print re.sub('\\bROAD$', 'RD.', s);
# print re.sub(r'\bROAD$', 'RD.', s);
# s = '100 BROAD ROAD APT. 3';
# print re.sub(r'\bROAD$', 'RD.', s);
# print re.sub(r'\bROAD\b', 'RD.', s);

# # 7.3 (Checking for Thousands)
# import re;
# pattern = '^M?M?M?$';
# print re.search(pattern, 'M');
# print re.search(pattern, 'MM');
# print re.search(pattern, 'MMM');
# print re.search(pattern, 'MMMM');
# print re.search(pattern, '');

# # 7.4 (Checking for Hundreds)
# import re;
# pattern = '^M?M?M?(CM|CD|D?C?C?C?)$';
# print re.search(pattern, 'MCM');
# print re.search(pattern, 'MD');
# print re.search(pattern, 'MMMCCC');
# print re.search(pattern, 'MCMC');
# print re.search(pattern, '');

# # 7.5 (The Old Way: Every Character Optional)
# import re;
# pattern = '^M?M?M?$';
# print re.search(pattern, 'M');
# pattern = '^M?M?M?$';
# print re.search(pattern, 'MM');
# pattern = '^M?M?M?$';
# print re.search(pattern, 'MMM');
# print re.search(pattern, 'MMMM');

# # 7.6 (The New Way: From n to m)
# import re;
# pattern = '^M{0,3}$';
# print re.search(pattern, 'M');
# print re.search(pattern, 'MM');
# print re.search(pattern, 'MMM');
# print re.search(pattern, 'MMMM');

# # 7.7 (Checking for Tens)
# import re;
# pattern = '^M?M?M?M?(CM|CD|D?C?C?C?)(XC|XL|L?X?X?X?)$';
# print re.search(pattern, 'MCMXL');
# print re.search(pattern, 'MCML');
# print re.search(pattern, 'MCMLX');
# print re.search(pattern, 'MCMLXXX');
# print re.search(pattern, 'MCMLXXXX');

# # 7.8 (Validating Roman Numerals with {n, m})
# import re;
# pattern = '^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$';
# print re.search(pattern, 'MDLV');
# print re.search(pattern, 'MMDCLXVI');
# print re.search(pattern, 'MMMMDCCCLXXXVIII');
# print re.search(pattern, 'I');

# # 7.9 (Regular Expressions with Inline Comments)
# import re;
# pattern = """
# ^                # beginning of string
# M{0,4}           # thousands - 0 to 4 M's
# (CM|CD|D?C{0,3}) # hundreds - 900 (CM), 400 (DC), 0-30 (0 to 3 C's),
#                  #            or 500-800 (D, followed by 0 to 3 C's)
# (XC|XL|L?X{0,3}) # tens - 90 (XC), 40 (XL), 0-30 (0 to 3 X's),
#                  #        or 50-80 (L, followed by 0 to 3 X's)
# (IX|IV|V?I{0,3}) # ones - 9 (IX), 4 (IV), 0-3 (0 to 3 I's), 
#                  #        or 5-8 (V, followed by 0 to 3 I's)
# $                # end of string
# """;
# print re.search(pattern, 'M', re.VERBOSE);
# print re.search(pattern, 'MCMLXXXIX', re.VERBOSE);
# print re.search(pattern, 'MMMMDCCCLXXXVIII', re.VERBOSE);
# print re.search(pattern, 'M');
# print re.VERBOSE;

# # 7.10 (Finding Numbers)
# import re;
# phonePattern = re.compile(r'^(\d{3})-(\d{3})-(\d{4})$');
# print phonePattern.search('800-555-1212').groups();
# print phonePattern.search('800-555-1212-1234');

# # 7.11 (Finding the Extension)
# import re;
# phonePattern = re.compile(r'^(\d{3})-(\d{3})-(\d{4})-(\d+)$');
# print phonePattern.search('800-555-1212-1234').groups();
# print phonePattern.search('800 555 1212 1234');
# print phonePattern.search('800-555-1212');

# # 7.12 (Handling Different Separators)
# import re;
# phonePattern = re.compile(r'^(\d{3})\D+(\d{3})\D+(\d{4})\D+(\d+)$');
# print phonePattern.search('800 555 1212 1234').groups();
# print phonePattern.search('800-555-1212-1234').groups();
# print phonePattern.search('80055512121234');
# print phonePattern.search('800-555-1212');

# # 7.13 (Handling Numbers Without Separators)
# import re;
# phonePattern = re.compile(r'^(\d{3})\D*(\d{3})\D*(\d{4})\D*(\d*)$');
# print phonePattern.search('80055512121234').groups();
# print phonePattern.search('800.555.1212 x1234').groups();
# print phonePattern.search('800-555-1212').groups();
# print phonePattern.search('(800)5551212 x1234');

# # 7.14 (Handling Leading Characters)
# import re;
# phonePattern = re.compile(r'^\D*(\d{3})\D*(\d{3})\D*(\d{4})\D*(\d*)$');
# print phonePattern.search('(800)5551212 ext. 1234').groups();
# print phonePattern.search('800-555-1212').groups();
# print phonePattern.search('work 1-(800) 555.1212 #1234');

# # 7.15 (Phone Number, Wherever I May Find Yet)
# import re;
# phonePattern = re.compile(r'(\d{3})\D*(\d{3})\D*(\d{4})\D*(\d*)$');
# print phonePattern.search('work 1-800 555.1212 #1234').groups();
# print phonePattern.search('800-555-1212').groups();
# print phonePattern.search('80055512121234').groups();

# 7.16 (Parsing Phone Numbers (Final Version))
import re;
phonePattern = re.compile(r'''
        # don't match beginning of string, number can start anywhere
(\d{3}) # area code is 3 digits (e.g. '800')
\D*     # optional separator is any number of non-digits
(\d{3}) # trunk is 3 digits (e.g. '555')
\D*     # optional separator
(\d{4}) # rest of number is 4 digits (e.g. '1212')
\D*     # optional separator
(\d*)   # extension is optional and can be any number of digits
$       # end of string
''', re.VERBOSE);
print phonePattern.search('work 1-(800) 555.1212 # 1234').groups();
print phonePattern.search('800-555-1212').groups();

######################################################################
# endline
