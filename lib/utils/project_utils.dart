import 'package:portfolio_web/constants/app_assets.dart';
import 'package:portfolio_web/model/project_model.dart';

// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: AppAssets.projectSpotcareDoc,
    title: 'SpotCare - For Doctors',
    subtitle:
        'An exclusive Doctor Centric App, developed with the sole intention of enabling new age technologies to bring in significant value to registered medical practitioners in their day-to-day practice. This app is currently available only for medical practitioners and their authorised healthcare staff based in India',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.naturalminds',
    iosLink:
        "https://apps.apple.com/in/app/spotcare-doctors-network/id1528551730",
  ),
  ProjectUtils(
    image: AppAssets.projectSpotcarePatient,
    title: 'SpotCare - For Patients',
    subtitle:
        'A Must have Health App for General Public, developed with the sole intention of enabling new age technologies to bring in significant value to registered medical practitioners in their day-to-day practice. This app is currently available only for medical patients in India.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.carereceiver',
    iosLink:
        "https://apps.apple.com/in/app/spotcare-patients-public/id1535914517",
  ),
  ProjectUtils(
    image: AppAssets.projectKiosk,
    title: 'SpotCare Kiosk',
    subtitle: 'An Essential Tele-Health Platform for Under-Served Regions, '
        'developed with the sole intention of leveraging advanced technologies to'
        ' bring substantial value to healthcare providers and patients in remote areas. '
        'Ensuring accessible and comprehensive healthcare for all. This'
        ' app is currently available only for patients in India',
  ),
  ProjectUtils(
    image: AppAssets.projectBuddhiDoc,
    title: 'Buddhi Clinic - For Doctors',
    subtitle:
        'Advanced Workflow Optimization App for Medical Professionals, developed with the sole intention of leveraging cutting-edge technologies to bring significant value to Buddhi team doctors in their daily practice. This app is specifically designed to enhance efficiency and save valuable time for healthcare providers in India.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.naturalminds.buddhidoctor',
    iosLink:
        'https://play.google.com/store/apps/details?id=com.naturalminds.buddhidoctor',
  ),
  ProjectUtils(
    image: AppAssets.projectBuddhiPatient,
    title: 'Buddhi Clinic - For Patients',
    subtitle:
        'Essential Mental Health App for Everyone, developed with the sole intention of utilizing modern technologies to provide substantial value to mental health professionals in their daily practice. This app is currently available only for patients in India.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.carereceiver.buddhiClinic',
    iosLink:
        'https://play.google.com/store/apps/details?id=com.carereceiver.buddhiClinic',
  ),
];

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: AppAssets.projectWiseVerbs,
    title: 'WiseVerbs',
    subtitle:
        'Inspiring Social App for Positive Thinking, developed with the sole intention of harnessing modern technologies '
        'to foster positivity and well-being through the sharing of motivational quotes.'
        ' This app features secure user authentication and data storage with Firebase, '
        'efficient state management using Provider, and a user-friendly dark theme interface.',
    githubLink: 'https://github.com/Muhammed-Aslam-n/WiseVerbs',
  ),
  ProjectUtils(
    image: AppAssets.projectEventoVendor,
    title: 'Evento - For Vendors',
    subtitle:
        ' Streamlined Event Management Platform for Vendors, developed with the sole intention of leveraging cutting-edge technologies to simplify the process of showcasing skills of vendors. Integrated with Google Maps, Razorpay for payments, and secure Google Sign-In and OTP authentication.',
    githubLink: 'https://github.com/Muhammed-Aslam-n/evento',
  ),
  ProjectUtils(
    image: AppAssets.projectEventoUser,
    title: 'Evento - For Users',
    subtitle:
        ' Tailored Event Management Platform, designed to simplify hiring vendors by recognizing talents and skills. Integrated with Google Maps, Razorpay for payments, and secure Google Sign-In and OTP authentication.',
    githubLink: 'https://github.com/Muhammed-Aslam-n/evento_user',
  ),
  ProjectUtils(
    image: AppAssets.projectMusin,
    title: 'Musin',
    subtitle:
        'Essential Music Player App for Music Enthusiasts, developed with the sole intention of utilizing modern technologies to enhance the music listening experience. Including features like playlist filtering, mini player, and search. It integrates device audio assets with Hive DB using GetX state management for seamless functionality.',
    githubLink: 'https://github.com/Muhammed-Aslam-n/MusIn',
  ),
];
