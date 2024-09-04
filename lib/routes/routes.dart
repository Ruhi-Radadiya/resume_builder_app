import 'package:flutter/material.dart';
import 'package:resumw_builder/screens/build_page/build_page.dart';
import 'package:resumw_builder/screens/carrier_page/carrier.dart';
import 'package:resumw_builder/screens/splash/splash.dart';
import '../screens/achievement/achievement_page.dart';
import '../screens/contact_info_page/contact_info.dart';
import '../screens/declaration/declaration.dart';
import '../screens/education/education_page.dart';
import '../screens/experience/Experience_page.dart';
import '../screens/hobbies/hobbies_page.dart';
import '../screens/pdf/pdf.dart';
import '../screens/personal_detail/personal_detail_page.dart';
import '../screens/projects/projects_page.dart';
import '../screens/reference/reference_page.dart';
import '../screens/technicalSkill/technical_skill_page.dart';

class Routes {
  static String splash = '/';
  static String buildpage = 'build_page';
  static String contactInfo = 'contact_info_page';
  static String carrierpage = 'carrier_page';
  static String personalDetail = 'personal_detail_page';
  static String education = 'education_page';
  static String experience = 'experience_page';
  static String technicalSkill = 'technical_skill_page';
  static String hobbies = 'hobbies_page';
  static String projects = 'projects_page';
  static String achievement = 'achievement_page';
  static String reference = 'reference_page';
  static String declaration = 'declaration_page';
  static String pdf = 'pdf_page';

  static Map<String, WidgetBuilder> myroutes = {
    splash: (context) => const SplashScreen(),
    buildpage: (context) => const BuildPage(),
    contactInfo: (context) => const ContactInfoPage(),
    carrierpage: (context) => const CarrierPage(),
    personalDetail: (context) => const PersonalDetailPage(),
    education: (context) => const EducationPage(),
    experience: (context) => const ExperiencePage(),
    technicalSkill: (context) => const TechnicalSkillPage(),
    hobbies: (context) => const HobbiesPage(),
    projects: (context) => const ProjectsPage(),
    achievement: (context) => const AchievementPage(),
    reference: (context) => const ReferencePage(),
    declaration: (context) => const DeclarationPage(),
    pdf: (context) => const PDFViewPage(),
  };
}
