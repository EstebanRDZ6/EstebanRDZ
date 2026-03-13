import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
  ];

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navAbout.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get navAbout;

  /// No description provided for @navSkills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get navSkills;

  /// No description provided for @navProjects.
  ///
  /// In en, this message translates to:
  /// **'Portfolio'**
  String get navProjects;

  /// No description provided for @navContact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get navContact;

  /// No description provided for @heroTitle.
  ///
  /// In en, this message translates to:
  /// **'Systems Analyst | Full-Stack Developer | SaaS & AI Solutions'**
  String get heroTitle;

  /// No description provided for @heroSubtitle.
  ///
  /// In en, this message translates to:
  /// **'I design and build scalable SaaS platforms, AI dashboards, and business automation systems.'**
  String get heroSubtitle;

  /// No description provided for @heroViewProjects.
  ///
  /// In en, this message translates to:
  /// **'View Projects'**
  String get heroViewProjects;

  /// No description provided for @heroContactMe.
  ///
  /// In en, this message translates to:
  /// **'Contact Me'**
  String get heroContactMe;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get aboutTitle;

  /// No description provided for @aboutP1.
  ///
  /// In en, this message translates to:
  /// **'I am a Systems Analyst and Full-Stack Developer focused on building modern software platforms for businesses.'**
  String get aboutP1;

  /// No description provided for @aboutP2.
  ///
  /// In en, this message translates to:
  /// **'My experience includes developing scalable backend systems, SaaS platforms, AI dashboards, and automation tools using technologies such as .NET, Python, Flutter, Docker, and PostgreSQL.'**
  String get aboutP2;

  /// No description provided for @aboutP3.
  ///
  /// In en, this message translates to:
  /// **'I specialize in backend architecture, API development, database systems, and automation workflows, designing solutions that improve business efficiency and data management.'**
  String get aboutP3;

  /// No description provided for @aboutP4.
  ///
  /// In en, this message translates to:
  /// **'Alongside web and backend development, I also develop game logic using the Godot Engine.'**
  String get aboutP4;

  /// No description provided for @skillsTitle.
  ///
  /// In en, this message translates to:
  /// **'Skills & Technologies'**
  String get skillsTitle;

  /// No description provided for @catProgramming.
  ///
  /// In en, this message translates to:
  /// **'Programming Languages'**
  String get catProgramming;

  /// No description provided for @catBackend.
  ///
  /// In en, this message translates to:
  /// **'Backend'**
  String get catBackend;

  /// No description provided for @catFrontend.
  ///
  /// In en, this message translates to:
  /// **'Frontend'**
  String get catFrontend;

  /// No description provided for @catDatabases.
  ///
  /// In en, this message translates to:
  /// **'Databases'**
  String get catDatabases;

  /// No description provided for @catDevops.
  ///
  /// In en, this message translates to:
  /// **'DevOps'**
  String get catDevops;

  /// No description provided for @catCloud.
  ///
  /// In en, this message translates to:
  /// **'Cloud'**
  String get catCloud;

  /// No description provided for @projectsTitle.
  ///
  /// In en, this message translates to:
  /// **'Featured Demo Platforms'**
  String get projectsTitle;

  /// No description provided for @projectsExtraTitle.
  ///
  /// In en, this message translates to:
  /// **'Additional Projects'**
  String get projectsExtraTitle;

  /// No description provided for @viewDemoBtn.
  ///
  /// In en, this message translates to:
  /// **'View Live Demo'**
  String get viewDemoBtn;

  /// No description provided for @viewGithub.
  ///
  /// In en, this message translates to:
  /// **'View GitHub'**
  String get viewGithub;

  /// No description provided for @projEcommerceTitle.
  ///
  /// In en, this message translates to:
  /// **'Modern Ecommerce Platform'**
  String get projEcommerceTitle;

  /// No description provided for @projEcommerceDesc.
  ///
  /// In en, this message translates to:
  /// **'Responsive ecommerce interface demonstrating modern UI and product catalog design.'**
  String get projEcommerceDesc;

  /// No description provided for @projDentalTitle.
  ///
  /// In en, this message translates to:
  /// **'Dental Clinic Website'**
  String get projDentalTitle;

  /// No description provided for @projDentalDesc.
  ///
  /// In en, this message translates to:
  /// **'Professional clinic website with services, pricing and appointment structure.'**
  String get projDentalDesc;

  /// No description provided for @projRestoTitle.
  ///
  /// In en, this message translates to:
  /// **'Restaurant / Bar Platform'**
  String get projRestoTitle;

  /// No description provided for @projRestoDesc.
  ///
  /// In en, this message translates to:
  /// **'Modern restaurant website with digital menu, reservations and payment integration.'**
  String get projRestoDesc;

  /// No description provided for @projCrmTitle.
  ///
  /// In en, this message translates to:
  /// **'Enterprise CRM System'**
  String get projCrmTitle;

  /// No description provided for @projCrmDesc.
  ///
  /// In en, this message translates to:
  /// **'CRM dashboard designed for business analytics and customer management.'**
  String get projCrmDesc;

  /// No description provided for @projSaasTitle.
  ///
  /// In en, this message translates to:
  /// **'SaaS Automation Platform'**
  String get projSaasTitle;

  /// No description provided for @projSaasDesc.
  ///
  /// In en, this message translates to:
  /// **'Workflow automation platform inspired by tools like Zapier.'**
  String get projSaasDesc;

  /// No description provided for @projStockTitle.
  ///
  /// In en, this message translates to:
  /// **'Stock Control System'**
  String get projStockTitle;

  /// No description provided for @projStockDesc.
  ///
  /// In en, this message translates to:
  /// **'Complete inventory management system including user registration, SQL Server DB, barcodes, and reports dashboard.'**
  String get projStockDesc;

  /// No description provided for @projUniTitle.
  ///
  /// In en, this message translates to:
  /// **'University Projects'**
  String get projUniTitle;

  /// No description provided for @projUniDesc.
  ///
  /// In en, this message translates to:
  /// **'Collection of academic projects including HTML/JS web apps, C#/.NET apps, and extended SQL databases.'**
  String get projUniDesc;

  /// No description provided for @projForensicTitle.
  ///
  /// In en, this message translates to:
  /// **'Forensic Analysis System'**
  String get projForensicTitle;

  /// No description provided for @projForensicDesc.
  ///
  /// In en, this message translates to:
  /// **'Forensic data analysis GUI built in Python/Tkinter, data viz with Matplotlib, and SQL Server backend.'**
  String get projForensicDesc;

  /// No description provided for @contactTitle.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contactTitle;

  /// No description provided for @contactEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get contactEmail;

  /// No description provided for @contactWhatsapp.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get contactWhatsapp;

  /// No description provided for @contactLinkedin.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get contactLinkedin;

  /// No description provided for @contactGithub.
  ///
  /// In en, this message translates to:
  /// **'GitHub'**
  String get contactGithub;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
