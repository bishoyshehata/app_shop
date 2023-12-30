import 'package:get/get.dart';

class AppConstants {
  static const terms = 'http://el-markaba.kirellos.com/terms_and_conditions';

  // Apis
  static const baseUrl = 'http://el-markaba.kirellos.com/api';
  static const companyRegister = '$baseUrl/company/register';
  static const companyLogin = '$baseUrl/company/login';
  static const companyLogout = '$baseUrl/company/logout';
  static const companyProfile = '$baseUrl/company/profile';
  static const companyAvailableJobs = '$baseUrl/job/getAvailJobs';
  static const companyGetMyJobs = '$baseUrl/company/getMyJobs';
  static const companyGetMyJobApplications = '$baseUrl/company/getJobApplications';
  static const companyAddJobs = '$baseUrl/company/addJob';
  static const companyUpdateJobs = '$baseUrl/company/updateJob';
  static const companyDeleteJobs = '$baseUrl/company/deleteJob';
  static const companyDeleteAccount = '$baseUrl/company/deleteAccount';
  static const companyUpdateJobApplicationStatus = '$baseUrl/company/updateApplicationStatus';

  static const studentLogin = '$baseUrl/student/login';
  static const studentLogout = '$baseUrl/student/logout';
  static const studentRegister = '$baseUrl/student/register';
  static const updateProfile = '$baseUrl/student/updateProfile';
  static const studentProfile = '$baseUrl/student/profile';
  static const studentAvailableJobs = '$baseUrl/job/getAvailJobs';
  static const studentJobDetails = '$baseUrl/company/getJobDetails';
  static const studentAvailableCourses = '$baseUrl/job/getAvailJobs';

  static const studentPosts = '$baseUrl/student/getPosts';
  static const getMyMessages = '$baseUrl/chat/getMyMessages';
  static const sendMessage = '$baseUrl/chat/sendMessage';
  static const studentReplyPosts = '$baseUrl/student/replyPost';
  static const studentAvailableTrainings = '$baseUrl/student/getTrainings';
  static const studentMyNotifications = '$baseUrl/student/notifications';
  static const studentUpdateNotifications = '$baseUrl/student/updateNotification';
  static const companyUpdateNotifications = '$baseUrl/company/updateNotification';
  static const companyNotifications = '$baseUrl/company/notifications';
  static const studentReservedTrainings = '$baseUrl/student/myTrainings';
  static const studentApplyTrainings = '$baseUrl/student/applyTraining';
  static const studentConfirmTrainings =
      '$baseUrl/student/confirmAppliedTraining';
  static const studentCancelTrainings =
      '$baseUrl/student/cancelAppliedTraining';
  static const studentApplyJobs = '$baseUrl/student/applyJob';
  static const studentAppliedJobs = '$baseUrl/student/myJobs';

  static const studentCancelJob = '$baseUrl/student/cancelAppliedJob';
  static const studentDeleteAccount = '$baseUrl/student/deleteAccount';

  static const slider = '$baseUrl/getSlider';
  static const setting = '$baseUrl/getSetting';

  static const aboutElMarkaba = '$baseUrl/about';
  static const getUniversities = '$baseUrl/getUniversities';
  static const getFacultyByUniversity = '$baseUrl/getFacultyByUniversity';
  static const getMajorByFaculty = '$baseUrl/getMajorByFaculty';
  static const sendMailForReset = '$baseUrl/sendMailForReset';
  static const confirmTokenForReset = '$baseUrl/confirmTokenForReset';
  static const resetPassword = '$baseUrl/company/resetPassword';
  static const studentResetPassword = '$baseUrl/student/resetPassword';

  static const businessManLogin = '$baseUrl/businessMan/login';
  static const businessManRegister = '$baseUrl/businessMan/register';
  static var isUpdated = true.obs;


  static String? authToken;
  static String? lang;
  static Role? role;

  static List<String> universities = [
    "جامعة القاهرة",
    "جامعة الأزهر",
    "جامعة الإسكندرية",
    "جامعة عين شمس",
    "جامعة المنصورة",
    "جامعة طنطا",
    "جامعة حلوان",
    "جامعة الفيوم",
    "جامعة أسيوط",
    "جامعة سوهاج",
    "جامعة المنيا",
    "جامعة قناة السويس",
    "جامعة المنوفية",
    "جامعة كفر الشيخ",
    "جامعة السويس",
    "جامعة دمنهور",
    "جامعة أسوان",
    "جامعة بنها",
    "جامعة بني سويف",
    "جامعة دمياط",
    "جامعة بورسعيد",
    "جامعة النيل",
    "جامعة سيناء",
    "جامعة العلم الجلالة بالعلمين الجديدة",
    "مدينة العلوم والتكنولوجيا والابتكار زويل",
    "جامعة الملك سلمان الدولية",
    "جامعة جلالة الملكة نور",
    "جامعة العلوم والفنون الحديثة",
    "الجامعة الأمريكية في القاهرة",
    "جامعة النهضة",
    "جامعة فاروس في الإسكندرية",
    "الجامعة الألمانية بالقاهرة",
    "الجامعة الألمانية الدولية",
    "جامعة المصرية للمعلوماتية",
    "الجامعة الفرنسية في مصر",
    "الجامعة البريطانية في مصر",
    "جامعة المصرية الصينية",
    "جامعة بدر في القاهرة",
    "جامعة بدر في أسيوط",
    "جامعة هرتفوردشاير في مصر",
    "جامعة الجيزة الجديدة",
    "أكاديمية الشروق",
    "أخرى"
  ];

  static const onBoardingDelay = 300;

  static getRoleFromString(String? role) {
    switch (role) {
      case 'student':
        return Role.student;

      case 'company':
        return Role.company;
      default:
        return null;
    }
  }

}

enum Role { student, company }

enum NotificationTypes {receiveMessage, trainings,myTraining,pendingTraining,myJob,jobs,posts,newAccount,dashboard}

//'pending','inProgress','active','deleted','enough'
enum Status { pending, inProgress, active, deleted, enough }

//'confirmed','notConfirmed','canceled','pending'
enum ApplicationStatus { confirmed, inProgress, notConfirmed, pending,canceled }

// 'yes' ,'no'
enum Paid { yes, no }


