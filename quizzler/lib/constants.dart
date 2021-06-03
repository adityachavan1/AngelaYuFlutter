import 'package:flutter/material.dart';

final kNeumorphicColor = Color.fromRGBO(235, 228, 229, 1);
final Color kBoxColor = Color(0xFFEFF3FF);
final Color kTextColor = Color.fromRGBO(4, 186, 186, 1);

final kBoxShadow = [
  BoxShadow(color: Colors.white, offset: Offset(-10, -10), blurRadius: 10),
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      offset: Offset(4, 4),
      blurRadius: 15)
];

final kIShadow = [
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      //blurRadius: 1,
      spreadRadius: 2,
      offset: Offset(-1, 1)),
  BoxShadow(
      color: Colors.white.withOpacity(.7),
      spreadRadius: 2,
      offset: Offset(1, -1)),
  BoxShadow(
      color: Colors.black.withOpacity(.15),
      spreadRadius: 2,
      //  blurRadius: 1,
      offset: Offset(-1, -1)),
  BoxShadow(
      color: Colors.white.withOpacity(.7),
      spreadRadius: 2,
      offset: Offset(1, 1)),
];

Map<int, Map<int, dynamic>> questions = {
  1: {
    0: 'Entomology is the science that studies',
    1: 'Behavior of human beings',
    2: 'Insects',
    3: 'The origin and history of technical and scientific terms',
    4: 'The formation of rocks',
    5: 2 // Denotes Correct Option...
  },
  2: {
    0: 'Grand Central Terminal, Park Avenue, New York is the world\'s',
    1: 'largest railway station',
    2: 'highest railway station',
    3: 'longest railway station',
    4: 'None of the above',
    5: 1 // Denotes Correct Option...
  },
  3: {
    0: 'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of',
    1: 'Asia',
    2: 'Africa',
    3: 'Europe',
    4: 'Australia',
    5: 2 // Denotes Correct Option...
  },
  4: {
    0: 'Garampani sanctuary is located at',
    1: 'Junagarh, Gujarat',
    2: 'Diphu, Assam',
    3: 'Kohima, Nagaland',
    4: 'Gangtok, Sikkim',
    5: 2 // Denotes Correct Option...
  },
  5: {
    0: 'For which of the following disciplines is Nobel Prize awarded?',
    1: 'Physics and Chemistry',
    2: 'Physiology or Medicine',
    3: 'Literature, Peace and Economics',
    4: 'All of the above',
    5: 4 // Denotes Correct Option...
  },
  6: {
    0: 'Hitler party which came into power in 1933 is known as',
    1: 'Labour Party',
    2: 'Nazi Party',
    3: 'Ku-Klux-Klan',
    4: 'Democratic Party',
    5: 3 // Denotes Correct Option...
  },
  7: {
    0: 'FFC stands for',
    1: 'Foreign Finance Corporation',
    2: 'Film Finance Corporation',
    3: 'Federation of Football Council',
    4: 'None of the above',
    5: 2 // Denotes Correct Option...
  },
  8: {
    0: 'Fastest shorthand writer was',
    1: 'Dr. G. D. Bist',
    2: 'J.R.D. Tata',
    3: 'J.M. Tagore',
    4: 'Khudada Khan',
    5: 1 // Denotes Correct Option...
  },
  9: {
    0: 'Epsom (England) is the place associated with',
    1: 'Horse racing',
    2: 'Polo',
    3: 'Shooting',
    4: 'Snooker',
    5: 1 // Denotes Correct Option...
  },
  10: {
    0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
    1: '1967',
    2: '1968',
    3: '1958',
    4: '1922',
    5: 1 // Denotes Correct Option...
  },
  11: {
    0: 'Galileo was an Italian astronomer who',
    1: 'developed the telescope',
    2: 'discovered four satellites of Jupiter',
    3: 'discovered that the movement of pendulum produces a regular time measurement',
    4: 'All of the above',
    5: 4 // Denotes Correct Option...
  },
  12: {
    0: 'Golf player Vijay Singh belongs to which country?',
    1: 'USA',
    2: 'Fiji',
    3: 'India',
    4: 'UK',
    5: 2 // Denotes Correct Option...
  },
  13: {
    0: 'Guarantee to an exporter that the importer of his goods will pay immediately for the goods ordered by him, is known as',
    1: 'Letter of Credit (L/C)',
    2: 'laissezfaire',
    3: 'inflation',
    4: 'None of the above',
    5: 1 // Denotes Correct Option...
  },
  14: {
    0: 'First Afghan War took place in',
    1: '1839',
    2: '1843',
    3: '1833',
    4: '1848',
    5: 1 // Denotes Correct Option...
  },
  15: {
    0: 'First China War was fought between',
    1: 'China and Britain',
    2: 'China and France',
    3: 'China and Egypt',
    4: 'China and Greek',
    5: 1 // Denotes Correct Option...
  },
  16: {
    0: 'For the Olympics and World Tournaments, the dimensions of basketball court are',
    1: '26 m x 14 m',
    2: '28 m x 15 m',
    3: '27 m x 16 m',
    4: '28 m x 16 m',
    5: 2 // Denotes Correct Option...
  },
  17: {
    0: 'Federation Cup, World Cup, Allywyn International Trophy and Challenge Cup are awarded to winners of',
    1: 'Tennis',
    2: 'Volleyball',
    3: 'Basketball',
    4: 'Cricket',
    5: 2 // Denotes Correct Option...
  },
  18: {
    0: 'Each year World Red Cross and Red Crescent Day is celebrated on',
    1: 'May 8',
    2: 'May 18',
    3: 'June 8',
    4: 'June 18',
    5: 1 // Denotes Correct Option...
  },
  19: {
    0: 'Famous sculptures depicting art of love built some time in 950 AD - 1050 AD are',
    1: 'Khajuraho temples',
    2: 'Jama Masjid',
    3: 'Sun temple',
    4: 'Mahabalipuram temples',
    5: 1 // Denotes Correct Option...
  },
  20: {
    0: 'Gravity setting chambers are used in industries to remove',
    1: 'SOx',
    2: 'NOx',
    3: 'suspended particulate matter',
    4: 'CO',
    5: 3 // Denotes Correct Option...
  },
  21: {
    0: 'Guwahati High Court is the judicature of',
    1: 'Nagaland',
    2: 'Arunachal Pradesh',
    3: 'Assam',
    4: 'All of the Above',
    5: 4 // Denotes Correct Option...
  },
  22: {
    0: 'Friction can be reduced by changing from',
    1: 'sliding to rolling',
    2: 'rolling to sliding',
    3: 'potential energy to kinetic energy',
    4: 'dynamic to static',
    5: 1 // Denotes Correct Option...
  },
  23: {
    0: 'During eleventh Antarctic Expedition in Nov. 1991/March 1992 ____ was installed',
    1: 'SODAR (SOnic Detection And Ranging)',
    2: 'Second Permanent Station \'Maitree\'',
    3: 'First permanent station \'Dakshin Gangotri\'',
    4: 'None of the above',
    5: 1 // Denotes Correct Option...
  },
  24: {
    0: 'Fire temple is the place of worship of which of the following religion?',
    1: 'Taoism',
    2: 'Judaism',
    3: 'Zoroastrianism (Parsi Religion)',
    4: 'Shintoism',
    5: 3 // Denotes Correct Option...
  },
  25: {
    0: 'Film and TV institute of India is located at',
    1: 'Pune (Maharashtra)',
    2: 'Rajkot (Gujarat)',
    3: 'Pimpri (Maharashtra)',
    4: 'Perambur (Tamilnadu)',
    5: 1 // Denotes Correct Option...
  },
  26: {
    0: 'Georgia, Uzbekistan and Turkmenistan became the members of UNO in',
    1: '1991',
    2: '1992',
    3: '1993',
    4: '1994',
    5: 2 // Denotes Correct Option...
  },
  27: {
    0: 'Germany signed the Armistice Treaty on ____ and World War I ended',
    1: 'January 19, 1918',
    2: 'May 30, 1918',
    3: 'November 11, 1918',
    4: 'February 15, 1918',
    5: 3 // Denotes Correct Option...
  },
  28: {
    0: 'During World War II, when did Germany attack France?',
    1: '1940',
    2: '1941',
    3: '1942',
    4: '1943',
    5: 1 // Denotes Correct Option...
  },
  29: {
    0: 'Frederick Sanger is a twice recipient of the Nobel Prize for',
    1: 'Chemistry in 1958 and 1980',
    2: 'Physics in 1956 and 1972',
    3: 'Chemistry in 1954 and Peace in 1962',
    4: 'Physics in 1903 and Chemistry in 1911',
    5: 1 // Denotes Correct Option...
  },
  30: {
    0: 'The ozone layer restricts',
    1: 'Visible light',
    2: 'Infrared radiation',
    3: 'X-rays and gamma rays',
    4: 'Ultraviolet radiation',
    5: 4 // Denotes Correct Option...
  },
  31: {
    0: 'Ecology deals with',
    1: 'Birds',
    2: 'Cell formation',
    3: 'Relation between organisms and their environment',
    4: 'Tissues',
    5: 3 // Denotes Correct Option...
  },
  32: {
    0: 'Filaria is caused by',
    1: 'Bacteria',
    2: 'Mosquito',
    3: 'Protozoa',
    4: 'Virus',
    5: 2 // Denotes Correct Option...
  },
  33: {
    0: 'Goa Shipyard Limited (GSL) was established in',
    1: '1958',
    2: '1957',
    3: '1956',
    4: '1955',
    5: 2 // Denotes Correct Option...
  },
  34: {
    0: 'Who was the first Indian Chief of Army Staff of the Indian Army ?',
    1: 'Gen. K.M. Cariappa',
    2: 'Vice-Admiral R.D. Katari',
    3: 'Gen. Maharaja Rajendra Singhji',
    4: 'None of the above',
    5: 1 // Denotes Correct Option...
  },
  35: {
    0: 'FRS stands for',
    1: 'Fellow Research System',
    2: 'Federation of Regulation Society',
    3: 'Fellow of Royal Society',
    4: 'None of the above',
    5: 3 // Denotes Correct Option...
  },
  36: {
    0: 'Escape velocity of a rocket fired from the earth towards the moon is a velocity to get rid of the',
    1: 'Earth\'s gravitational pull',
    2: 'Moon\'s gravitational pull',
    3: 'Centripetal force due to the earth\'s rotation',
    4: 'Pressure of the atmosphere',
    5: 1 // Denotes Correct Option...
  },
  37: {
    0: 'Coral reefs in India can be found in',
    1: 'the coast of Orissa',
    2: 'Waltair',
    3: 'Rameshwaram',
    4: 'Trivandrum',
    5: 3 // Denotes Correct Option...
  },
  38: {
    0: 'For safety, the fuse wire used in the mains for household supply of electricity must be made of metal having',
    1: 'low melting point',
    2: 'high resistance',
    3: 'high melting point',
    4: 'low specific heat',
    5: 1 // Denotes Correct Option...
  },
  39: {
    0: 'Golden Temple, Amritsar is India\'s',
    1: 'largest Gurdwara',
    2: 'oldest Gurudwara',
    3: 'Both option A and B are correct',
    4: 'None of the above',
    5: 1 // Denotes Correct Option...
  },
  40: {
    0: 'During World War I Germany was defeated in the Battle of Verdun on the western front and Romania declared war on the eastern front in the year',
    1: '1914 AD',
    2: '1915 AD',
    3: '1916 AD',
    4: '1917 AD',
    5: 3 // Denotes Correct Option...
  },
  41: {
    0: 'Heavy Water Project (Talcher) and Fertilizer plant (Paradeep) are famous industries of',
    1: 'Orissa',
    2: 'Tamil nadu',
    3: 'Andhra Pradesh',
    4: 'Kerala',
    5: 1 // Denotes Correct Option...
  },
  42: {
    0: 'Hamid Karzai was chosen president of Afghanistan in',
    1: '2000',
    2: '2001',
    3: '2002',
    4: '2003',
    5: 3 // Denotes Correct Option...
  },
  43: {
    0: 'Durand Cup is associated with the game of',
    1: 'Cricket',
    2: 'Football',
    3: 'Hockey',
    4: 'Volleyball',
    5: 2 // Denotes Correct Option...
  },
  44: {
    0: 'Headquarters of UNO are situated at',
    1: 'New York, USA',
    2: 'Hague (Netherlands)',
    3: 'Geneva',
    4: 'Paris',
    5: 1 // Denotes Correct Option...
  },
  45: {
    0: 'First International Peace Congress was held in London in',
    1: '1564 AD',
    2: '1798 AD',
    3: '1843 AD',
    4: '1901 AD',
    5: 3 // Denotes Correct Option...
  },
  46: {
    0: 'For seeing objects at the surface of water from a submarine under water, the instrument used is',
    1: 'kaleidoscope',
    2: 'periscope',
    3: 'spectroscope',
    4: 'telescope',
    5: 2 // Denotes Correct Option...
  },
  47: {
    0: 'Dr. Zakir Hussain was',
    1: 'the first Muslim president of India',
    2: 'first vice president of India',
    3: 'first president of Indian National Congress',
    4: 'first speaker of Lok Sabha',
    5: 1 // Denotes Correct Option...
  },
  48: {
    0: 'G-15 is an economic grouping of',
    1: 'First World Nations',
    2: 'Second World Nations',
    3: 'Third World Nations',
    4: 'Fourth World Nations',
    5: 3 // Denotes Correct Option...
  },
  49: {
    0: 'Fathometer is used to measure',
    1: 'Earthquakes',
    2: 'Rainfall',
    3: 'Ocean depth',
    4: 'Sound intensity',
    5: 3 // Denotes Correct Option...
  },
  50: {
    0: 'For galvanizing iron which of the following metals is used?',
    1: 'Aluminium',
    2: 'Copper',
    3: 'Lead',
    4: 'Zinc',
    5: 4 // Denotes Correct Option...
  },
  // 51: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 52: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 53: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 54: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 55: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 56: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 57: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 58: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 59: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 60: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 61: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 62: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 63: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 64: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 65: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 66: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 67: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 68: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 69: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 70: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 71: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 72: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 73: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 74: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 75: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 76: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 77: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 78: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 79: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 80: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 81: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 82: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 83: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 84: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 85: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 86: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 87: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 88: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 89: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 90: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 91: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 92: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 93: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 94: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 95: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 96: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 97: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 98: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 99: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 100: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 101: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 102: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 103: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 104: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 105: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 106: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 107: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 108: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 109: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 110: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 111: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 112: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 113: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 114: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 115: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 116: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 117: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 118: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 119: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 120: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 121: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 122: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 123: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 124: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 125: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 126: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 127: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 128: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 129: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 130: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 131: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 132: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 133: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 134: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 135: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 136: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 137: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 138: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 139: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 140: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 141: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 142: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 143: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 144: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 145: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 146: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 147: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 148: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 149: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 150: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 151: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 152: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 153: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 154: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 155: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 156: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 157: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 158: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 159: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 160: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 161: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 162: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 163: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 164: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 165: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 166: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 167: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 168: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 169: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 170: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 171: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 172: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 173: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 174: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 175: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 176: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 177: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 178: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 179: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 180: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 181: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 182: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 183: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 184: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 185: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 186: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 187: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 188: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 189: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 190: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 191: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 192: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 193: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 194: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 195: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 196: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 197: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 198: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 199: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
  // 200: {
  //   0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
  //   1: '1967',
  //   2: '1968',
  //   3: '1958',
  //   4: '1922',
  //   5: 1 // Denotes Correct Option...
  // },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
//   10: {
//     0: 'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in',
//     1: '1967',
//     2: '1968',
//     3: '1958',
//     4: '1922',
//     5: 1 // Denotes Correct Option...
//   },
};

List<LinearGradient> gradients = [
  LinearGradient(
    colors: <Color>[Color(0xff00F260), Color(0xff0575E6)],
  ),
  LinearGradient(
    colors: <Color>[Color(0xff0575E6), Color(0xff021B79)], // Very Blue
  ),
  LinearGradient(
    colors: <Color>[Color(0xffDCE35B), Color(0xff45B649)], // Easy Med
  ),
  LinearGradient(
    colors: <Color>[Color(0xff3494E6), Color(0xffEC6EAD)], // Vice City
  ),
  LinearGradient(
    colors: <Color>[Color(0xff67B26F), Color(0xff4ca2cd)], // Mild
  ),
  LinearGradient(
    colors: <Color>[Color(0xffee0979), Color(0xffff6a00)], // Ibiza Sunset
  ),
  LinearGradient(
    colors: <Color>[
      Color(0xffA770EF),
      Color(0xffCF8BF3),
      Color(0xffFDB99b)
    ], // Radar
  ),
  LinearGradient(
    colors: <Color>[Color(0xff41295a), Color(0xff2F0743)], // 80's Purple
  ),
  LinearGradient(
    colors: <Color>[Color(0xfff4c4f3), Color(0xfffc67fa)], // Black Rose
  ),
  LinearGradient(
    colors: <Color>[
      Color(0xffff7e5f),
      Color(0xfffeb47b)
    ], // Ed's Sunset Gradient
  ),
  LinearGradient(
    colors: <Color>[Color(0xffff00cc), Color(0xff333399)], // Cosmic Fusion
  ),
  LinearGradient(
    colors: <Color>[Color(0xff4ecdc4), Color(0xff556270)], // Disco
  ),
  LinearGradient(
    colors: <Color>[Color(0xfff85032), Color(0xffe73827)], // Blood Red
  ),
  LinearGradient(
    colors: <Color>[Color(0xffcb2d3e), Color(0xffef473a)], // Firewatch
  ),
  LinearGradient(
    colors: <Color>[Color(0xff56ab2f), Color(0xffa8e063)], // Lush
  ),
  LinearGradient(
    colors: <Color>[Color(0xff000428), Color(0xff004e92)], // Frost
  ),
  LinearGradient(
    colors: <Color>[Color(0xff42275a), Color(0xff734b6d)], // Mauve
  ),
  LinearGradient(
    colors: <Color>[Color(0xff141e30), Color(0xff243b55)], // Royal
  ),
  LinearGradient(
    colors: <Color>[Color(0xff11998e), Color(0xff38ef7d)], // Quepal
  ),
  LinearGradient(
    colors: <Color>[Color(0xffe96443), Color(0xff904e95)], // Grapefruit Sunset
  ),
  LinearGradient(
    colors: <Color>[Color(0xff3a7bd5), Color(0xff3a6073)], // Solid Vault
  ),
  LinearGradient(
    colors: <Color>[Color(0xffff5f6d), Color(0xffffc371)], // Sweet Morning
  ),
  LinearGradient(
    colors: <Color>[Color(0xffff4b1f), Color(0xffff9068)], // Sylvia
  ),
  LinearGradient(
    colors: <Color>[Color(0xff4b79a1), Color(0xff283e51)], // Dark Skies
  ),
  LinearGradient(
    colors: <Color>[Color(0xff834d9b), Color(0xffd04ed6)], // Suzy
  ),
  LinearGradient(
    colors: <Color>[Color(0xff2980b9), Color(0xff2c3e50)], // Nighthawk
  ),
  LinearGradient(
    colors: <Color>[Color(0xff1e3c72), Color(0xff2a5298)], // Joomla
  ),
  LinearGradient(
    colors: <Color>[Color(0xff6a3093), Color(0xffa044ff)], // Purplin
  ),
  LinearGradient(
    colors: <Color>[Color(0xff457fca), Color(0xff5691c8)], // Inbox
  ),
  LinearGradient(
    colors: <Color>[Color(0xffb24592), Color(0xfff15f79)], // Blush
  ),
  LinearGradient(
    colors: <Color>[Color(0xffffb75e), Color(0xffed8f03)], // Light Orange
  ),
  LinearGradient(
    colors: <Color>[Color(0xff76b852), Color(0xff8dc26f)], // Little Leaf
  ),
  LinearGradient(
    colors: <Color>[Color(0xff673AB7), Color(0xff512DA8)], // Deep Purple
  ),
  LinearGradient(
    colors: <Color>[Color(0xfff46b45), Color(0xffeea849)], // MasterCard
  ),
  LinearGradient(
    colors: <Color>[Color(0xfff005C97), Color(0xff363795)], // Clear Sky
  ),
  LinearGradient(
    colors: <Color>[Color(0xffe53935), Color(0xffe35d5b)], // Passion
  ),
  LinearGradient(
    colors: <Color>[Color(0xfffe8c00), Color(0xfff83600)], // Sound Cloud
  ),
  LinearGradient(
    colors: <Color>[Color(0xff870000), Color(0xff190A05)], // The Strain
  ),
  LinearGradient(
    colors: <Color>[Color(0xffe52d27), Color(0xffb31217)], // Youtube
  ),
  LinearGradient(
    colors: <Color>[Color(0xfffc00ff), Color(0xff00dbde)], // Timber
  ),
  LinearGradient(
    colors: <Color>[Color(0xff00c6ff), Color(0xff0072ff)], // Facebook Messenger
  ),
  LinearGradient(
    colors: <Color>[
      Color(0xff0f0c29),
      Color(0xff302b63),
      Color(0xff24243e)
    ], // Lawrencium
  ),
  LinearGradient(
    colors: <Color>[Color(0xffE44D26), Color(0xffF16529)], // HTML
  ),
  LinearGradient(
    colors: <Color>[Color(0xffF2994A), Color(0xffF2C94C)], // Sunkist
  ),
];
