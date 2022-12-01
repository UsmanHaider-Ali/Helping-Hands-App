class CampaignModel {
  String image;
  String name;
  String campaignBy;
  double targetAmount;
  double raisedAmount;
  String timeLeft;
  int categoryId;

  CampaignModel({
    required this.image,
    required this.name,
    required this.campaignBy,
    required this.targetAmount,
    required this.raisedAmount,
    required this.timeLeft,
    required this.categoryId,
  });
}

List<CampaignModel> getCampaignsList() {
  return campaignsList;
}

final List<CampaignModel> campaignsList = [
  CampaignModel(
    image:
        "https://images.unsplash.com/photo-1601972602237-8c79241e468b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
    name: "Mobile App Project",
    campaignBy: "Ali Haider",
    targetAmount: 100.0,
    raisedAmount: 70.0,
    timeLeft: "07 Days",
    categoryId: 1,
  ),
  CampaignModel(
      image:
          "https://plus.unsplash.com/premium_photo-1663021819140-fdd91ecf36cc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
      name: "COVID Patient Needs Funds",
      campaignBy: "Haider Ali",
      targetAmount: 74.9,
      raisedAmount: 23.0,
      categoryId: 2,
      timeLeft: "09 Days"),
  CampaignModel(
      image:
          "https://images.unsplash.com/photo-1630964046403-8b745c1e3c69?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aGVhcnQlMjBhdHRhY2t8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
      name: "Heat Patient",
      campaignBy: "Haider Mughal",
      targetAmount: 58.9,
      categoryId: 4,
      raisedAmount: 23.0,
      timeLeft: "09 Days"),
  CampaignModel(
      image:
          "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dGVjaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
      name: "Required Funds for Hardware",
      campaignBy: "Abbas Ali",
      categoryId: 2,
      targetAmount: 896.9,
      raisedAmount: 423.0,
      timeLeft: "09 Days"),
  CampaignModel(
      image:
          "https://images.unsplash.com/photo-1600336153113-d66c79de3e91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zmxvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
      name: "Emergency Funds for Flood",
      campaignBy: "Hassan Ali",
      categoryId: 1,
      targetAmount: 729.9,
      raisedAmount: 507.0,
      timeLeft: "09 Days"),
  CampaignModel(
      image:
          "https://plus.unsplash.com/premium_photo-1661679026942-db5aef08c093?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aWRlYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
      name: "Needs Funds for an Innovative",
      campaignBy: "Irfan Ali",
      targetAmount: 100.9,
      categoryId: 3,
      raisedAmount: 88.0,
      timeLeft: "13 Days"),
  CampaignModel(
      image:
          "https://images.unsplash.com/photo-1617330411212-b9764eca9913?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZW50ZXJwcmVuZXVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
      name: "Required Funds to Start Glasses Business",
      campaignBy: "Hussain Ali",
      categoryId: 3,
      targetAmount: 740.9,
      raisedAmount: 230.0,
      timeLeft: "19 Days"),
];

class ProjectModel {
  String name;
  String projectBy;
  String currentModule;
  String completionDate;
  double percentage;
  int categoryId;
  bool isGivingFunds;

  ProjectModel({
    required this.name,
    required this.projectBy,
    required this.currentModule,
    required this.completionDate,
    required this.percentage,
    required this.categoryId,
    required this.isGivingFunds,
  });
}

final List<ProjectModel> projectsList = [
  ProjectModel(
    name: "Mobile App Project",
    projectBy: "Ali Haider",
    currentModule: "Mobile App Designing",
    completionDate: "12 March 2022",
    percentage: 39.0,
    categoryId: 1,
    isGivingFunds: false,
  ),
  ProjectModel(
    name: "Flood Relief Management System",
    projectBy: "Haider Ali",
    currentModule: "Gathering Requirements",
    completionDate: "1 March 2023",
    percentage: 91.0,
    categoryId: 1,
    isGivingFunds: true,
  ),
  ProjectModel(
    name: "COVID Tracking System",
    projectBy: "Abbas Ali",
    currentModule: "Design System",
    completionDate: "1 March 2024",
    percentage: 44.0,
    categoryId: 4,
    isGivingFunds: true,
  ),
  ProjectModel(
    name: "Blood Donation and Monetary Platform",
    projectBy: "Abbas Haider",
    currentModule: "Designing App",
    completionDate: "3 March 2023",
    percentage: 84.0,
    categoryId: 4,
    isGivingFunds: false,
  ),
];

List<ProjectModel> getProjectsList() {
  return getProjectsList();
}

List getCategoriesList() {
  return categoryList;
}

final List<String> categoryList = [
  "All",
  "Emergency",
  "Animals",
  "Events",
  "Minority",
  "Organization",
  "Homeless",
  "Refugees",
  "Immigrant",
  "Food",
  "Education",
  "Sports",
  "Human Rights",
  "Business",
  "Medical",
  "Accident",
  "Startups",
  "Products",
  "Other",
];

const users = [
  {
    'name': 'Elon Musk',
    'message': 'Hey, how are you doing?',
    'time': '3:53 pm',
    'profilePic':
        'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
  },
  {
    'name': 'John Doe',
    'message':
        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
    'time': '2:25 pm',
    'profilePic':
        'https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg',
  },
  {
    'name': 'Naman Ranawat',
    'message':
        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
    'time': '1:03 pm',
    'profilePic':
        'https://media.cntraveler.com/photos/60596b398f4452dac88c59f8/16:9/w_3999,h_2249,c_limit/MtFuji-GettyImages-959111140.jpg',
  },
  {
    'name': 'Ali',
    'message': 'Call me, have some work',
    'time': '12:06 pm',
    'profilePic':
        'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg',
  },
  {
    'name': 'Hassan',
    'message':
        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
    'time': '10:00 am',
    'profilePic':
        'https://uploads.dailydot.com/2018/10/olli-the-polite-cat.jpg?auto=compress%2Cformat&ixlib=php-3.3.0',
  },
  {
    'name': 'Jurica',
    'message': 'Yo!!!!! Long time, no see!?',
    'time': '9:53 am',
    'profilePic':
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Albert Dera',
    'message': 'Are you fat?',
    'time': '7:25 am',
    'profilePic':
        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Joseph',
    'message':
        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
    'time': '6:02 am',
    'profilePic':
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Sikandar',
    'message':
        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
    'time': '4:56 am',
    'profilePic':
        'https://images.unsplash.com/photo-1619194617062-5a61b9c6a049?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
  },
  {
    'name': 'Ian Dooley',
    'message':
        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
    'time': '1:00 am',
    'profilePic':
        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
  },
];

const questions = [
  {
    'question': 'Where to find the swiftFileProvider library?',
    'answer': 'Hey, how are you doing?',
    'time': '3:30 pm',
  },
  {
    'question':
        'I need documentation/information to help me parse and interpret a WAV file',
    'answer':
        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.',
    'time': '3:25 pm',
  },
  {
    'question': 'More digits in my tibble made by a converted vector',
    'answer':
        'n, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
    'time': '2:7 pm',
  },
  {
    'question': 'Login and registration page path in ASP.NET MVC',
    'answer':
        'd graphic design, Lorem ipsum is a placeholder text commonly used to dem'
            '',
    'time': '3:25 pm',
  },
  {
    'question':
        'Mattermost notification when public Github repository pushes new release',
    'answer':
        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used ',
    'time': '2:6 pm',
  },
  {
    'question': 'Conan boost dlls not installed on Windows',
    'answer': 'a typeface without relying on meaningful content.',
    'time': '6:25 pm',
  },
  {
    'question':
        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. ',
    'answer':
        ' Lorem ipsum may be used as a placeholder before final copy is available.',
    'time': '2:22 pm',
  },
  {
    'question': 'Terminal message and I don t know where it came from',
    'answer':
        ' Lorem ipsum may be used as a placeholder before final copy is available.',
    'time': '1:25 pm',
  },
];

const messages = [
  {
    "isMe": false,
    "text":
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
    "time": "10:00 am",
    "by": "Ali Haider"
  },
  {
    "isMe": true,
    "text": "im fine,wbu?",
    "time": "11:00 am",
    "by": "Usman Haider"
  },
  {
    "isMe": false,
    "text": "I am great man!",
    "time": "11:01 am",
    "by": "Ali Raza"
  },
  {
    "isMe": false,
    "text": "Just messaged cuz I had some work.",
    "time": "11:01 am",
    "by": "Abbas Ali"
  },
  {
    "isMe": true,
    "text":
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
    "time": "11:03 am",
    "by": "Ali Haider"
  },
  {
    "isMe": false,
    "text":
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
    "time": "11:04 am",
    "by": "Ali Usman"
  },
  {
    "isMe": true,
    "text": " Sure, what is the channel name?",
    "time": "11:05 am",
    "by": "Arsalan Mughal"
  },
  {
    "isMe": false,
    "text":
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
    "time": "11:06 am",
    "by": "Irfan Mirza"
  },
  {"isMe": true, "text": "Looks great to me!", "time": "11:15 am", "by": "Ali"},
  {
    "isMe": false,
    "text": "Thanks bro!",
    "time": "11:17 am",
    "by": "Hassan Haider"
  },
  {
    "isMe": false,
    "text":
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
    "time": "11:16 am",
    "by": "Ali Raza"
  },
  {
    "isMe": true,
    "text": "Yes, surely bro!",
    "time": "11:17 am",
    "by": "Ali Hassan"
  },
  {
    "isMe": false,
    "text": "Cool, did you like the content?",
    "time": "11:18 am",
    "by": "Ali Haider"
  },
  {
    "isMe": true,
    "text":
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
    "time": "11:19 am",
    "by": "Ali Mirza"
  },
  {
    "isMe": false,
    "text": "OMG! Woah! Thanks!",
    "time": "11:20 am",
    "by": "Mirza Haider"
  },
  {
    "isMe": false,
    "text":
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
    "time": "11:20 am",
    "by": "Ali Mughal"
  },
];
