import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterBox extends StatefulWidget {
  final filterData;

  const FilterBox({super.key, required this.filterData});

  @override
  State<FilterBox> createState() => _FilterBoxState();
}

class _FilterBoxState extends State<FilterBox> {
  // ignore: non_constant_identifier_names
  var Science_departments =
  [
    "Physics",
    "Chemistry",
    "Mathematics",
    "Statistics",
    "Computer Science",
    "Biochemistry",
    "Microbiology",
    "Botany",
    "Zoology",
    "Environmental Science",
    "Geography and Environment",
    "Geology",
    "Oceanography",
    "Pharmacy",
    "Biotechnology",
    "Genetic Engineering and Biotechnology",
    "Food Technology and Nutritional Science",
    "Applied Physics and Electronics",
    "Materials Science and Engineering",
    "Nuclear Engineering",
    "Agriculture",
    "Fisheries",
    "Veterinary Science and Animal Husbandry"
  ];
  var Commerce_departments =[
    "Accounting",
    "Finance",
    "Marketing",
    "Management",
    "Human Resource Management",
    "International Business",
    "Tourism and Hospitality Management",
    "Banking and Insurance",
    "Economics"
  ];
  var arts_departments = [
    "Bangla",
    "English",
    "History",
    "Philosophy",
    "Islamic Studies",
    "Arabic",
    "Sanskrit and Pali",
    "Bengali Language and Literature",
    "English Language and Literature",
    "Linguistics",
    "Communication and Journalism",
    "Theatre and Performance Studies",
    "Fine Arts",
    "Music",
    "Film and Media Studies",
    "Women and Gender Studies"
  ];
  var universitys = [
  {
  "name": "University of Dhaka",
  "acronym": "DU",
  "established": "1921"
  },
  {
  "name": "University of Chittagong",
  "acronym": "CU",
  "established": "1966"
  },
  {
  "name": "University of Rajshahi",
  "acronym": "RU",
  "established": "1953"
  },
  {
  "name": "University of Barisal",
  "acronym": "BU",
  "established": "2011"
  },
  {
  "name": "University of Khulna",
  "acronym": "KU",
  "established": "1991"
  },
  {
  "name": "Islamic University, Bangladesh",
  "acronym": "IU",
  "established": "1985"
  },
  {
  "name": "Jahangirnagar University",
  "acronym": "JU",
  "established": "1970"
  },
  {
  "name": "Jagannath University",
  "acronym": "JnU",
  "established": "2005"
  },
  {
  "name": "Bangladesh Agricultural University",
  "acronym": "BAU",
  "established": "1961"
  },
  {
  "name": "Bangladesh University of Engineering and Technology",
  "acronym": "BUET",
  "established": "1962"
  },
  {
  "name": "Khulna University of Engineering & Technology",
  "acronym": "KUET",
  "established": "2003"
  },
  {
  "name": "Chittagong University of Engineering & Technology",
  "acronym": "CUET",
  "established": "1968"
  },
  {
  "name": "Rajshahi University of Engineering & Technology",
  "acronym": "RUET",
  "established": "1964"
  },
  {
  "name": "Dhaka University of Engineering & Technology",
  "acronym": "DUET",
  "established": "1980"
  },
  {
  "name": "Mawlana Bhashani Science and Technology University",
  "acronym": "MBSTU",
  "established": "1999"
  },
  {
  "name": "Patuakhali Science and Technology University",
  "acronym": "PSTU",
  "established": "2000"
  },
  {
  "name": "Noakhali Science and Technology University",
  "acronym": "NSTU",
  "established": "2005"
  },
  {
  "name": "Pabna University of Science and Technology",
  "acronym": "PUST",
  "established": "2008"
  },
  {
  "name": "Hajee Mohammad Danesh Science & Technology University",
  "acronym": "HSTU",
  "established": "1999"
  },
  {
  "name": "Jessore University of Science & Technology",
  "acronym": "JUST",
  "established": "2007"
  },
  {
  "name": "Bangabandhu Sheikh Mujibur Rahman Science and Technology University",
  "acronym": "BSMRSTU",
  "established": "2011"
  },
  {
  "name": "Bangladesh Army University of Science and Technology",
  "acronym": "BAUST",
  "established": "2015"
  },
  {
  "name": "Bangladesh University of Professionals",
  "acronym": "BUP",
  "established": "2008"
  },
  {
  "name": "Bangladesh Open University",
  "acronym": "BOU",
  "established": "1992"
  },
  {
  "name": "Bangladesh National University",
  "acronym": "NU",
  "established": "1992"
  },
  {
  "name": "National University of Bangladesh",
  "acronym": "NUB",
  "established": "1992"
  },
  {
  "name": "Bangladesh University of Textiles",
  "acronym": "BUTex",
  "established": "2010"
  },
  {
  "name": "Bangladesh University of Professionals",
  "acronym": "BUP",
  "established": "2008"
  },
  {
  "name": "Bangladesh University of Fishery and Marine Sciences",
  "acronym": "BUFT",
  "established": "2016"
  },
  {
  "name": "North South University",
  "acronym": "NSU",
  "established": "1992"
  },
  {
  "name": "East West University",
  "acronym": "EWU",
  "established": "1996"
  },
  {
  "name": "American International University-Bangladesh",
  "acronym": "AIUB",
  "established": "1994"
  },
  {
  "name": "Brac University",
  "acronym": "BRACU",
  "established": "2001"
  },
  {
  "name": "Independent University, Bangladesh",
  "acronym": "IUB",
  "established": "1993"
  },
  {
  "name": "United International University",
  "acronym": "UIU",
  "established": "2003"
  },
  {
  "name": "Ahsanullah University of Science and Technology",
  "acronym": "AUST",
  "established": "1995"
  },
  {
  "name": "Daffodil International University",
  "acronym": "DIU",
  "established": "2002"
  },
  {
  "name": "Green University of Bangladesh",
  "acronym": "GUB",
  "established": "2003"
  },
  {
  "name": "International Islamic University, Chittagong",
  "acronym": "IIUC",
  "established": "1995"
  },
  {
  "name": "International University of Business Agriculture and Technology",
  "acronym": "IUBAT",
  "established": "1991"
  },
  {
  "name": "Manarat International University",
  "acronym": "MIU",
  "established": "2001"
  },
  {
  "name": "Northern University Bangladesh",
  "acronym": "NUB",
  "established": "2002"
  },
  {
  "name": "Premier University, Chittagong",
  "acronym": "PUC",
  "established": "2001"
  },
  {
  "name": "Primeasia University",
  "acronym": "PAU",
  "established": "2002"
  },
  {
  "name": "Queens University",
  "acronym": "QU",
  "established": "1996"
  },
  {
  "name": "Southern University Bangladesh",
  "acronym": "SUB",
  "established": "2002"
  },
  {
  "name": "Stamford University Bangladesh",
  "acronym": "SUB",
  "established": "2002"
  },
  {
  "name": "University of Asia Pacific",
  "acronym": "UAP",
  "established": "1996"
  },
  {
  "name": "University of Development Alternative",
  "acronym": "UODA",
  "established": "2002"
  },
  {
  "name": "University of Liberal Arts Bangladesh",
  "acronym": "ULAB",
  "established": "2004"
  },
  {
  "name": "University of Science and Technology Chittagong",
  "acronym": "USTC",
  "established": "1992"
  },
  {
  "name": "ASA University Bangladesh",
  "acronym": "ASAUB",
  "established": "2006"
  },
  {
  "name": "Atish Dipankar University of Science and Technology",
  "acronym": "ADUST",
  "established": "2004"
  },
  {
  "name": "Bangladesh Army International University of Science and Technology",
  "acronym": "BAIUST",
  "established": "2015"
  },
  {
  "name": "Bangladesh Army University of Engineering & Technology",
  "acronym": "BAUET",
  "established": "2015"
  },
  {
  "name": "Bangladesh Islami University",
  "acronym": "BIU",
  "established": "2006"
  },
  {
  "name": "Bangladesh University",
  "acronym": "BU",
  "established": "2001"
  },
  {
  "name": "Bangladesh University of Business and Technology",
  "acronym": "BUBT",
  "established": "2003"
  },
  {
  "name": "BGMEA University of Fashion & Technology",
  "acronym": "BUFT",
  "established": "2012"
  }];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("University/Institude",style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 15,),
          DropdownMenu(
            width: 200,
              dropdownMenuEntries: List.generate(universitys.length, (index) => DropdownMenuEntry(value: universitys[index]["name"].toString(), label: universitys[index]["name"].toString()))),
          const Text("Department",style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 15,),
          DropdownMenu(
            width: 200,
            onSelected: (value) {

            },
            dropdownMenuEntries: [
              DropdownMenuEntry(value: "",label: "Science",enabled: false),
            ...Science_departments.map((e) => DropdownMenuEntry(value: e,enabled: true,label: e,)),
              DropdownMenuEntry(value: "",label: "Commerce",enabled: false),
            ...Commerce_departments.map((e) => DropdownMenuEntry(value: e,enabled: true,label: e,)),
              DropdownMenuEntry(value: "",label: "ARTS",enabled: false),
            ...arts_departments.map((e) => DropdownMenuEntry(value: e,enabled: true,label: e,)),
          ],),

        ],

      ),
    );
  }
}
