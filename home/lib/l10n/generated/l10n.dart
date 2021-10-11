// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Đăng kí dịch vụ chăm sóc`
  String get registerCareService {
    return Intl.message(
      'Đăng kí dịch vụ chăm sóc',
      name: 'registerCareService',
      desc: '',
      args: [],
    );
  }

  /// `Trả cứu kết quả xét nghiệm`
  String get lookupTestResult {
    return Intl.message(
      'Trả cứu kết quả xét nghiệm',
      name: 'lookupTestResult',
      desc: '',
      args: [],
    );
  }

  /// `Cấp cứu`
  String get emergency {
    return Intl.message(
      'Cấp cứu',
      name: 'emergency',
      desc: '',
      args: [],
    );
  }

  /// `Bạn cần được hỗ trợ`
  String get needSupport {
    return Intl.message(
      'Bạn cần được hỗ trợ',
      name: 'needSupport',
      desc: '',
      args: [],
    );
  }

  /// `Gọi cấp cứu ngay`
  String get callEmergency {
    return Intl.message(
      'Gọi cấp cứu ngay',
      name: 'callEmergency',
      desc: '',
      args: [],
    );
  }

  /// `Gọi cấp cứu trong`
  String get callEmergencyIn {
    return Intl.message(
      'Gọi cấp cứu trong',
      name: 'callEmergencyIn',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký cho người này`
  String get registerForThisGuy {
    return Intl.message(
      'Đăng ký cho người này',
      name: 'registerForThisGuy',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng thanh toán để sử dụng dịch vụ`
  String get notPayment {
    return Intl.message(
      'Vui lòng thanh toán để sử dụng dịch vụ',
      name: 'notPayment',
      desc: '',
      args: [],
    );
  }

  /// `Bệnh nhân đang được chăm sóc bởi Dr. Aibolit`
  String get getTreatment {
    return Intl.message(
      'Bệnh nhân đang được chăm sóc bởi Dr. Aibolit',
      name: 'getTreatment',
      desc: '',
      args: [],
    );
  }

  /// `Bệnh nhân`
  String get patient {
    return Intl.message(
      'Bệnh nhân',
      name: 'patient',
      desc: '',
      args: [],
    );
  }

  /// `Thêm người thân`
  String get addPatient {
    return Intl.message(
      'Thêm người thân',
      name: 'addPatient',
      desc: '',
      args: [],
    );
  }

  /// `Kết quả xét nghiệm`
  String get testResult {
    return Intl.message(
      'Kết quả xét nghiệm',
      name: 'testResult',
      desc: '',
      args: [],
    );
  }

  /// `Hãy đăng ký tiêm chủng Vaccine Covid cho bạn và gia đình ngay bây giờ!`
  String get testResultDescription {
    return Intl.message(
      'Hãy đăng ký tiêm chủng Vaccine Covid cho bạn và gia đình ngay bây giờ!',
      name: 'testResultDescription',
      desc: '',
      args: [],
    );
  }

  /// `Tra cứu`
  String get lookup {
    return Intl.message(
      'Tra cứu',
      name: 'lookup',
      desc: '',
      args: [],
    );
  }

  /// `Lịch sử xét nghiệm`
  String get testtHistory {
    return Intl.message(
      'Lịch sử xét nghiệm',
      name: 'testtHistory',
      desc: '',
      args: [],
    );
  }

  /// `Hỏi bác sĩ`
  String get askDoctor {
    return Intl.message(
      'Hỏi bác sĩ',
      name: 'askDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Câu hỏi`
  String get question {
    return Intl.message(
      'Câu hỏi',
      name: 'question',
      desc: '',
      args: [],
    );
  }

  /// `Bác sĩ trả lời`
  String get doctorAnswer {
    return Intl.message(
      'Bác sĩ trả lời',
      name: 'doctorAnswer',
      desc: '',
      args: [],
    );
  }

  /// `Đang điều trị`
  String get subscriptionActive {
    return Intl.message(
      'Đang điều trị',
      name: 'subscriptionActive',
      desc: '',
      args: [],
    );
  }

  /// `Đang tạm hoãn điều trị`
  String get subscriptionSuspended {
    return Intl.message(
      'Đang tạm hoãn điều trị',
      name: 'subscriptionSuspended',
      desc: '',
      args: [],
    );
  }

  /// `Bệnh nhân đã kết thúc điều trị`
  String get subscriptionInactive {
    return Intl.message(
      'Bệnh nhân đã kết thúc điều trị',
      name: 'subscriptionInactive',
      desc: '',
      args: [],
    );
  }

  /// `Bệnh nhân đang tạm hoãn điều trị`
  String get subscriptionSuspendedDesc {
    return Intl.message(
      'Bệnh nhân đang tạm hoãn điều trị',
      name: 'subscriptionSuspendedDesc',
      desc: '',
      args: [],
    );
  }

  /// `Đã xảy ra lỗi!`
  String get loadFail {
    return Intl.message(
      'Đã xảy ra lỗi!',
      name: 'loadFail',
      desc: '',
      args: [],
    );
  }

  /// `Dr. Aibolit...`
  String get loadIdle {
    return Intl.message(
      'Dr. Aibolit...',
      name: 'loadIdle',
      desc: '',
      args: [],
    );
  }

  /// `Đang tải...`
  String get loadMore {
    return Intl.message(
      'Đang tải...',
      name: 'loadMore',
      desc: '',
      args: [],
    );
  }

  /// `Đã tải xuống hết!`
  String get noMoreData {
    return Intl.message(
      'Đã tải xuống hết!',
      name: 'noMoreData',
      desc: '',
      args: [],
    );
  }

  /// `Tin tức mới nhất`
  String get news {
    return Intl.message(
      'Tin tức mới nhất',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `Chưa thanh toán`
  String get pendingPayment {
    return Intl.message(
      'Chưa thanh toán',
      name: 'pendingPayment',
      desc: '',
      args: [],
    );
  }

  /// `Đang xử lý thanh toán`
  String get processingPayment {
    return Intl.message(
      'Đang xử lý thanh toán',
      name: 'processingPayment',
      desc: '',
      args: [],
    );
  }

  /// `Thanh toán thất bại`
  String get failedPayment {
    return Intl.message(
      'Thanh toán thất bại',
      name: 'failedPayment',
      desc: '',
      args: [],
    );
  }

  /// `Đã hoàn tiền`
  String get refundedPayment {
    return Intl.message(
      'Đã hoàn tiền',
      name: 'refundedPayment',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng thanh toán để sử dụng dịch vụ.`
  String get pendingPaymentDesc {
    return Intl.message(
      'Vui lòng thanh toán để sử dụng dịch vụ.',
      name: 'pendingPaymentDesc',
      desc: '',
      args: [],
    );
  }

  /// `Thanh toán không thành công, vui lòng thanh toán lại.`
  String get failedPaymentDesc {
    return Intl.message(
      'Thanh toán không thành công, vui lòng thanh toán lại.',
      name: 'failedPaymentDesc',
      desc: '',
      args: [],
    );
  }

  /// `Đã hoàn tiền thanh toán thành công.`
  String get refundedPaymentDesc {
    return Intl.message(
      'Đã hoàn tiền thanh toán thành công.',
      name: 'refundedPaymentDesc',
      desc: '',
      args: [],
    );
  }

  /// `Hệ thống đang xử lý thanh toán của bạn.`
  String get processingPaymentDesc {
    return Intl.message(
      'Hệ thống đang xử lý thanh toán của bạn.',
      name: 'processingPaymentDesc',
      desc: '',
      args: [],
    );
  }

  /// `Xin chào!`
  String get helloInAccountTab {
    return Intl.message(
      'Xin chào!',
      name: 'helloInAccountTab',
      desc: '',
      args: [],
    );
  }

  /// `Khoản ký quỹ của tôi`
  String get myDeposit {
    return Intl.message(
      'Khoản ký quỹ của tôi',
      name: 'myDeposit',
      desc: '',
      args: [],
    );
  }

  /// `Top up now`
  String get topUpNow {
    return Intl.message(
      'Top up now',
      name: 'topUpNow',
      desc: '',
      args: [],
    );
  }

  /// `Lịch sử giao dịch`
  String get transactionHistory {
    return Intl.message(
      'Lịch sử giao dịch',
      name: 'transactionHistory',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết những giao dịch đã thực hiện`
  String get subTransactionHistory {
    return Intl.message(
      'Chi tiết những giao dịch đã thực hiện',
      name: 'subTransactionHistory',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý thành viên gia đình`
  String get controlMember {
    return Intl.message(
      'Quản lý thành viên gia đình',
      name: 'controlMember',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý, chỉnh sửa thông tin thành viên`
  String get subControlMember {
    return Intl.message(
      'Quản lý, chỉnh sửa thông tin thành viên',
      name: 'subControlMember',
      desc: '',
      args: [],
    );
  }

  /// `Liên hệ`
  String get contact {
    return Intl.message(
      'Liên hệ',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Liên hệ với chúng tôi để được hỗ trợ nhanh nhất`
  String get subContact {
    return Intl.message(
      'Liên hệ với chúng tôi để được hỗ trợ nhanh nhất',
      name: 'subContact',
      desc: '',
      args: [],
    );
  }

  /// `Cá nhân`
  String get individual {
    return Intl.message(
      'Cá nhân',
      name: 'individual',
      desc: '',
      args: [],
    );
  }

  /// `Ngôn ngữ`
  String get language {
    return Intl.message(
      'Ngôn ngữ',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Việt`
  String get vn {
    return Intl.message(
      'Tiếng Việt',
      name: 'vn',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get en {
    return Intl.message(
      'English',
      name: 'en',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get logout {
    return Intl.message(
      'Đăng xuất',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Công ty Galaxy One`
  String get galaxyone {
    return Intl.message(
      'Công ty Galaxy One',
      name: 'galaxyone',
      desc: '',
      args: [],
    );
  }

  /// `Mã số GCNĐKDN:`
  String get contactTitle1 {
    return Intl.message(
      'Mã số GCNĐKDN:',
      name: 'contactTitle1',
      desc: '',
      args: [],
    );
  }

  /// ` 0316229413 cấp ngày 13 tháng 4 năm 2020 bởi Phòng ĐKKD - Sở KHĐT TP. Hồ Chí Minh.`
  String get contentContactTitle1 {
    return Intl.message(
      ' 0316229413 cấp ngày 13 tháng 4 năm 2020 bởi Phòng ĐKKD - Sở KHĐT TP. Hồ Chí Minh.',
      name: 'contentContactTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ:`
  String get contactTitle2 {
    return Intl.message(
      'Địa chỉ:',
      name: 'contactTitle2',
      desc: '',
      args: [],
    );
  }

  /// ` Tầng 14, Tòa Nhà HD Tower, 25bis Nguyễn Thị Minh Khai, Phường Bến Nghé, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.`
  String get contentContactTitle2 {
    return Intl.message(
      ' Tầng 14, Tòa Nhà HD Tower, 25bis Nguyễn Thị Minh Khai, Phường Bến Nghé, Quận 1, Thành phố Hồ Chí Minh, Việt Nam.',
      name: 'contentContactTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại hotline:`
  String get contactTitle3 {
    return Intl.message(
      'Số điện thoại hotline:',
      name: 'contactTitle3',
      desc: '',
      args: [],
    );
  }

  /// ` 19006688`
  String get contentContactTitle3 {
    return Intl.message(
      ' 19006688',
      name: 'contentContactTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Email: `
  String get contactTitle4 {
    return Intl.message(
      'Email: ',
      name: 'contactTitle4',
      desc: '',
      args: [],
    );
  }

  /// `19006688@vietnamkhoemanh.vn`
  String get contentContactTitle4 {
    return Intl.message(
      '19006688@vietnamkhoemanh.vn',
      name: 'contentContactTitle4',
      desc: '',
      args: [],
    );
  }

  /// `Người đại diện theo pháp luật:`
  String get contactTitle5 {
    return Intl.message(
      'Người đại diện theo pháp luật:',
      name: 'contactTitle5',
      desc: '',
      args: [],
    );
  }

  /// ` Nguyễn Thị Phương Thảo`
  String get contentContactTitle5 {
    return Intl.message(
      ' Nguyễn Thị Phương Thảo',
      name: 'contentContactTitle5',
      desc: '',
      args: [],
    );
  }

  /// ` Quá trình đăng xuất thất bại, vui lòng thử lại.`
  String get logoutError {
    return Intl.message(
      ' Quá trình đăng xuất thất bại, vui lòng thử lại.',
      name: 'logoutError',
      desc: '',
      args: [],
    );
  }

  /// `Bạn cần giúp đỡ?`
  String get needHelp {
    return Intl.message(
      'Bạn cần giúp đỡ?',
      name: 'needHelp',
      desc: '',
      args: [],
    );
  }

  /// `Tư vấn bác sỹ ngay`
  String get doctorHelp {
    return Intl.message(
      'Tư vấn bác sỹ ngay',
      name: 'doctorHelp',
      desc: '',
      args: [],
    );
  }

  /// `Hãy cho chúng tôi biết bạn cần gì?`
  String get letUsKnow {
    return Intl.message(
      'Hãy cho chúng tôi biết bạn cần gì?',
      name: 'letUsKnow',
      desc: '',
      args: [],
    );
  }

  /// `Đội ngũ y bác sỹ của chúng tôi luôn sẵn sàng đề hỗ trợ, giúp đỡ bạn khi bạn cần nhất!`
  String get ourPleasure {
    return Intl.message(
      'Đội ngũ y bác sỹ của chúng tôi luôn sẵn sàng đề hỗ trợ, giúp đỡ bạn khi bạn cần nhất!',
      name: 'ourPleasure',
      desc: '',
      args: [],
    );
  }

  /// `Tìm hiểu những câu hỏi thường gặp`
  String get searchFAQ {
    return Intl.message(
      'Tìm hiểu những câu hỏi thường gặp',
      name: 'searchFAQ',
      desc: '',
      args: [],
    );
  }

  /// `Gọi tổng đài`
  String get callCenter {
    return Intl.message(
      'Gọi tổng đài',
      name: 'callCenter',
      desc: '',
      args: [],
    );
  }

  /// `Trao đổi với tổng đài để tư vấn`
  String get discussWithCS {
    return Intl.message(
      'Trao đổi với tổng đài để tư vấn',
      name: 'discussWithCS',
      desc: '',
      args: [],
    );
  }

  /// `Gửi tin nhắn`
  String get sendMesseage {
    return Intl.message(
      'Gửi tin nhắn',
      name: 'sendMesseage',
      desc: '',
      args: [],
    );
  }

  /// `Gửi tin nhắn cho chúng tôi ngay`
  String get sendNow {
    return Intl.message(
      'Gửi tin nhắn cho chúng tôi ngay',
      name: 'sendNow',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có thắc mắc?`
  String get haveQuestion {
    return Intl.message(
      'Bạn có thắc mắc?',
      name: 'haveQuestion',
      desc: '',
      args: [],
    );
  }

  /// `Hãy tìm những câu hỏi và trả lời thường gặp dưới đây`
  String get followingAnswer {
    return Intl.message(
      'Hãy tìm những câu hỏi và trả lời thường gặp dưới đây',
      name: 'followingAnswer',
      desc: '',
      args: [],
    );
  }

  /// `Hãy để chúng tôi chăm sóc bạn!`
  String get letUsHelp {
    return Intl.message(
      'Hãy để chúng tôi chăm sóc bạn!',
      name: 'letUsHelp',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get login {
    return Intl.message(
      'Đăng nhập',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Dr. Aibolit`
  String get homeDoctor {
    return Intl.message(
      'Dr. Aibolit',
      name: 'homeDoctor',
      desc: '',
      args: [],
    );
  }

  /// `An tâm điều trị tại nhà`
  String get feelSafe {
    return Intl.message(
      'An tâm điều trị tại nhà',
      name: 'feelSafe',
      desc: '',
      args: [],
    );
  }

  /// `Phiên bản`
  String get version {
    return Intl.message(
      'Phiên bản',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Gói khám sức khỏe tại nhà`
  String get packageService {
    return Intl.message(
      'Gói khám sức khỏe tại nhà',
      name: 'packageService',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký ngay`
  String get registerNow {
    return Intl.message(
      'Đăng ký ngay',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập để tạo thành viên và\ntrải nghiệm dịch vụ trên Dr. Aibolit`
  String get registerDescription {
    return Intl.message(
      'Đăng nhập để tạo thành viên và\ntrải nghiệm dịch vụ trên Dr. Aibolit',
      name: 'registerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách thành viên`
  String get memberList {
    return Intl.message(
      'Danh sách thành viên',
      name: 'memberList',
      desc: '',
      args: [],
    );
  }

  /// `Xem tất cả`
  String get seeAll {
    return Intl.message(
      'Xem tất cả',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `Tin sức khỏe`
  String get healthyNews {
    return Intl.message(
      'Tin sức khỏe',
      name: 'healthyNews',
      desc: '',
      args: [],
    );
  }

  /// `Tất cả`
  String get all {
    return Intl.message(
      'Tất cả',
      name: 'all',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
