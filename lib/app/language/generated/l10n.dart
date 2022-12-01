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

  /// `Buổi sáng`
  String get morning {
    return Intl.message(
      'Buổi sáng',
      name: 'morning',
      desc: '',
      args: [],
    );
  }

  /// `Buổi chiều`
  String get midday {
    return Intl.message(
      'Buổi chiều',
      name: 'midday',
      desc: '',
      args: [],
    );
  }

  /// `Buổi tối`
  String get evening {
    return Intl.message(
      'Buổi tối',
      name: 'evening',
      desc: '',
      args: [],
    );
  }

  /// `Sản phẩm sở hữu`
  String get common_myProduct {
    return Intl.message(
      'Sản phẩm sở hữu',
      name: 'common_myProduct',
      desc: '',
      args: [],
    );
  }

  /// `Có`
  String get common_yes {
    return Intl.message(
      'Có',
      name: 'common_yes',
      desc: '',
      args: [],
    );
  }

  /// `Không`
  String get common_no {
    return Intl.message(
      'Không',
      name: 'common_no',
      desc: '',
      args: [],
    );
  }

  /// `Dự án sở hữu`
  String get common_myProject {
    return Intl.message(
      'Dự án sở hữu',
      name: 'common_myProject',
      desc: '',
      args: [],
    );
  }

  /// `Tìm kiếm`
  String get common_search {
    return Intl.message(
      'Tìm kiếm',
      name: 'common_search',
      desc: '',
      args: [],
    );
  }

  /// `Đã xảy ra lỗi`
  String get common_fetchDataFailure {
    return Intl.message(
      'Đã xảy ra lỗi',
      name: 'common_fetchDataFailure',
      desc: '',
      args: [],
    );
  }

  /// `Không có dữ liệu`
  String get common_listEmpty {
    return Intl.message(
      'Không có dữ liệu',
      name: 'common_listEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết tin tức`
  String get common_newsDetail {
    return Intl.message(
      'Chi tiết tin tức',
      name: 'common_newsDetail',
      desc: '',
      args: [],
    );
  }

  /// `Xem tất cả`
  String get common_seeAll {
    return Intl.message(
      'Xem tất cả',
      name: 'common_seeAll',
      desc: '',
      args: [],
    );
  }

  /// `Xem thêm`
  String get common_seeMore {
    return Intl.message(
      'Xem thêm',
      name: 'common_seeMore',
      desc: '',
      args: [],
    );
  }

  /// `Ghi chú`
  String get common_note {
    return Intl.message(
      'Ghi chú',
      name: 'common_note',
      desc: '',
      args: [],
    );
  }

  /// `hoặc`
  String get common_or {
    return Intl.message(
      'hoặc',
      name: 'common_or',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào ghi chú`
  String get common_note_hintText {
    return Intl.message(
      'Nhập vào ghi chú',
      name: 'common_note_hintText',
      desc: '',
      args: [],
    );
  }

  /// `HOT`
  String get common_hot {
    return Intl.message(
      'HOT',
      name: 'common_hot',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu giữ chỗ`
  String get common_requestAReservation {
    return Intl.message(
      'Yêu cầu giữ chỗ',
      name: 'common_requestAReservation',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung`
  String get common_content {
    return Intl.message(
      'Nội dung',
      name: 'common_content',
      desc: '',
      args: [],
    );
  }

  /// `Nhập nội dung`
  String get common_content_hintText {
    return Intl.message(
      'Nhập nội dung',
      name: 'common_content_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung yêu cầu không hợp lệ`
  String get common_content_errorText {
    return Intl.message(
      'Nội dung yêu cầu không hợp lệ',
      name: 'common_content_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Mã căn hộ`
  String get common_apartmentCode {
    return Intl.message(
      'Mã căn hộ',
      name: 'common_apartmentCode',
      desc: '',
      args: [],
    );
  }

  /// `Mã căn hộ không hợp lệ`
  String get common_apartmentCode_errorText {
    return Intl.message(
      'Mã căn hộ không hợp lệ',
      name: 'common_apartmentCode_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Giá`
  String get common_price {
    return Intl.message(
      'Giá',
      name: 'common_price',
      desc: '',
      args: [],
    );
  }

  /// `Tiêu đề không hợp lệ`
  String get common_title_errorText {
    return Intl.message(
      'Tiêu đề không hợp lệ',
      name: 'common_title_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào một số hợp lệ`
  String get common_number_hintText {
    return Intl.message(
      'Nhập vào một số hợp lệ',
      name: 'common_number_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Số nhập vào chưa hợp lệ`
  String get common_number_errorText {
    return Intl.message(
      'Số nhập vào chưa hợp lệ',
      name: 'common_number_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Họ và tên`
  String get common_fullName {
    return Intl.message(
      'Họ và tên',
      name: 'common_fullName',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào họ và tên`
  String get common_fullName_hintText {
    return Intl.message(
      'Nhập vào họ và tên',
      name: 'common_fullName_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Họ và tên chưa hợp lệ`
  String get common_fullName_errorText {
    return Intl.message(
      'Họ và tên chưa hợp lệ',
      name: 'common_fullName_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Giới tính`
  String get common_gender {
    return Intl.message(
      'Giới tính',
      name: 'common_gender',
      desc: '',
      args: [],
    );
  }

  /// `Ngày sinh`
  String get common_dateOfBirth {
    return Intl.message(
      'Ngày sinh',
      name: 'common_dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Điện thoại`
  String get common_phone {
    return Intl.message(
      'Điện thoại',
      name: 'common_phone',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại`
  String get common_phone1 {
    return Intl.message(
      'Số điện thoại',
      name: 'common_phone1',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào số điện thoại`
  String get common_phone_hintText {
    return Intl.message(
      'Nhập vào số điện thoại',
      name: 'common_phone_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa nhập số điện thoại`
  String get common_phone_errorText {
    return Intl.message(
      'Bạn chưa nhập số điện thoại',
      name: 'common_phone_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại chưa hợp lệ`
  String get common_phone_errorText1 {
    return Intl.message(
      'Số điện thoại chưa hợp lệ',
      name: 'common_phone_errorText1',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get common_email {
    return Intl.message(
      'Email',
      name: 'common_email',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ email`
  String get common_emailAddress {
    return Intl.message(
      'Địa chỉ email',
      name: 'common_emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào địa chỉ Email`
  String get common_emailAddress_hintText {
    return Intl.message(
      'Nhập vào địa chỉ Email',
      name: 'common_emailAddress_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa nhập địa chỉ Email`
  String get common_emailAddress_errorText {
    return Intl.message(
      'Bạn chưa nhập địa chỉ Email',
      name: 'common_emailAddress_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ Email chưa hợp lệ`
  String get common_emailAddress_errorText1 {
    return Intl.message(
      'Địa chỉ Email chưa hợp lệ',
      name: 'common_emailAddress_errorText1',
      desc: '',
      args: [],
    );
  }

  /// `Nơi sinh`
  String get common_bornAddress {
    return Intl.message(
      'Nơi sinh',
      name: 'common_bornAddress',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào nơi sinh`
  String get common_bornAddress_hintText {
    return Intl.message(
      'Nhập vào nơi sinh',
      name: 'common_bornAddress_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Quê quán`
  String get common_rootAddress {
    return Intl.message(
      'Quê quán',
      name: 'common_rootAddress',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào quê quán`
  String get common_rootAddress_hintText {
    return Intl.message(
      'Nhập vào quê quán',
      name: 'common_rootAddress_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Dân tộc`
  String get common_nation {
    return Intl.message(
      'Dân tộc',
      name: 'common_nation',
      desc: '',
      args: [],
    );
  }

  /// `Quốc tịch`
  String get common_nationality {
    return Intl.message(
      'Quốc tịch',
      name: 'common_nationality',
      desc: '',
      args: [],
    );
  }

  /// `Tôn giáo`
  String get common_religion {
    return Intl.message(
      'Tôn giáo',
      name: 'common_religion',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào tôn giáo`
  String get common_religion_hintText {
    return Intl.message(
      'Nhập vào tôn giáo',
      name: 'common_religion_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Tôn giáo nhập vào chưa hợp lệ`
  String get common_religion_errorText {
    return Intl.message(
      'Tôn giáo nhập vào chưa hợp lệ',
      name: 'common_religion_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Số CMND/ CCCD`
  String get common_identity_code {
    return Intl.message(
      'Số CMND/ CCCD',
      name: 'common_identity_code',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào số CMND/ CCCD`
  String get common_identity_code_hintText {
    return Intl.message(
      'Nhập vào số CMND/ CCCD',
      name: 'common_identity_code_hintText',
      desc: '',
      args: [],
    );
  }

  /// `không hợp lệ`
  String get common_errorText {
    return Intl.message(
      'không hợp lệ',
      name: 'common_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Ngày cấp`
  String get common_identityDate {
    return Intl.message(
      'Ngày cấp',
      name: 'common_identityDate',
      desc: '',
      args: [],
    );
  }

  /// `Nơi cấp`
  String get common_identityPlace {
    return Intl.message(
      'Nơi cấp',
      name: 'common_identityPlace',
      desc: '',
      args: [],
    );
  }

  /// `Dự án`
  String get common_project {
    return Intl.message(
      'Dự án',
      name: 'common_project',
      desc: '',
      args: [],
    );
  }

  /// `Mã sản phẩm`
  String get common_productCode {
    return Intl.message(
      'Mã sản phẩm',
      name: 'common_productCode',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách tài sản`
  String get common_propertyList {
    return Intl.message(
      'Danh sách tài sản',
      name: 'common_propertyList',
      desc: '',
      args: [],
    );
  }

  /// `Căn hộ`
  String get common_apartment {
    return Intl.message(
      'Căn hộ',
      name: 'common_apartment',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ`
  String get common_address {
    return Intl.message(
      'Địa chỉ',
      name: 'common_address',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ liên hệ`
  String get common_contactAddress {
    return Intl.message(
      'Địa chỉ liên hệ',
      name: 'common_contactAddress',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào địa chỉ liên hệ`
  String get common_contactAddress_hintText {
    return Intl.message(
      'Nhập vào địa chỉ liên hệ',
      name: 'common_contactAddress_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Nghề nghiệp`
  String get common_job {
    return Intl.message(
      'Nghề nghiệp',
      name: 'common_job',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào nghề nghiệp`
  String get common_job_hintText {
    return Intl.message(
      'Nhập vào nghề nghiệp',
      name: 'common_job_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Nghề nghiệp nhập vào chưa hợp lệ`
  String get common_job_errorText {
    return Intl.message(
      'Nghề nghiệp nhập vào chưa hợp lệ',
      name: 'common_job_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Thay đổi`
  String get common_change {
    return Intl.message(
      'Thay đổi',
      name: 'common_change',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật thông tin`
  String get common_update_info {
    return Intl.message(
      'Cập nhật thông tin',
      name: 'common_update_info',
      desc: '',
      args: [],
    );
  }

  /// `Thay đổi thông tin`
  String get common_change_info {
    return Intl.message(
      'Thay đổi thông tin',
      name: 'common_change_info',
      desc: '',
      args: [],
    );
  }

  /// `Hủy đăng ký`
  String get common_cancel_register {
    return Intl.message(
      'Hủy đăng ký',
      name: 'common_cancel_register',
      desc: '',
      args: [],
    );
  }

  /// `Lý do hủy`
  String get common_cancel_reason {
    return Intl.message(
      'Lý do hủy',
      name: 'common_cancel_reason',
      desc: '',
      args: [],
    );
  }

  /// `Nhập lý do hủy đăng ký`
  String get common_cancel_hintText {
    return Intl.message(
      'Nhập lý do hủy đăng ký',
      name: 'common_cancel_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Lý do hủy chưa hợp lệ`
  String get common_cancel_errorText {
    return Intl.message(
      'Lý do hủy chưa hợp lệ',
      name: 'common_cancel_errorText',
      desc: '',
      args: [],
    );
  }

  /// `ngày`
  String get common_day {
    return Intl.message(
      'ngày',
      name: 'common_day',
      desc: '',
      args: [],
    );
  }

  /// `tháng`
  String get common_month {
    return Intl.message(
      'tháng',
      name: 'common_month',
      desc: '',
      args: [],
    );
  }

  /// `năm`
  String get common_year {
    return Intl.message(
      'năm',
      name: 'common_year',
      desc: '',
      args: [],
    );
  }

  /// `vnđ`
  String get common_currencyUnit {
    return Intl.message(
      'vnđ',
      name: 'common_currencyUnit',
      desc: '',
      args: [],
    );
  }

  /// `Tối đa`
  String get common_maximum {
    return Intl.message(
      'Tối đa',
      name: 'common_maximum',
      desc: '',
      args: [],
    );
  }

  /// `Tối thiểu`
  String get common_minimum {
    return Intl.message(
      'Tối thiểu',
      name: 'common_minimum',
      desc: '',
      args: [],
    );
  }

  /// `Ảnh`
  String get common_picture {
    return Intl.message(
      'Ảnh',
      name: 'common_picture',
      desc: '',
      args: [],
    );
  }

  /// `Tỉnh/ Thánh phố`
  String get common_province {
    return Intl.message(
      'Tỉnh/ Thánh phố',
      name: 'common_province',
      desc: '',
      args: [],
    );
  }

  /// `Quận/ Huyện`
  String get common_district {
    return Intl.message(
      'Quận/ Huyện',
      name: 'common_district',
      desc: '',
      args: [],
    );
  }

  /// `Phường/ Xã`
  String get common_ward {
    return Intl.message(
      'Phường/ Xã',
      name: 'common_ward',
      desc: '',
      args: [],
    );
  }

  /// `File đính kèm`
  String get common_attachedFile {
    return Intl.message(
      'File đính kèm',
      name: 'common_attachedFile',
      desc: '',
      args: [],
    );
  }

  /// `Quà tặng`
  String get common_gift {
    return Intl.message(
      'Quà tặng',
      name: 'common_gift',
      desc: '',
      args: [],
    );
  }

  /// `Ngân hàng`
  String get common_bank {
    return Intl.message(
      'Ngân hàng',
      name: 'common_bank',
      desc: '',
      args: [],
    );
  }

  /// `Thẻ ngân hàng`
  String get common_bankCard {
    return Intl.message(
      'Thẻ ngân hàng',
      name: 'common_bankCard',
      desc: '',
      args: [],
    );
  }

  /// `Hủy`
  String get button_cancel {
    return Intl.message(
      'Hủy',
      name: 'button_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận`
  String get button_confirm {
    return Intl.message(
      'Xác nhận',
      name: 'button_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Xác thực`
  String get button_verify {
    return Intl.message(
      'Xác thực',
      name: 'button_verify',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký`
  String get button_register {
    return Intl.message(
      'Đăng ký',
      name: 'button_register',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp tục`
  String get button_continue {
    return Intl.message(
      'Tiếp tục',
      name: 'button_continue',
      desc: '',
      args: [],
    );
  }

  /// `Lưu cập nhật`
  String get button_save_update {
    return Intl.message(
      'Lưu cập nhật',
      name: 'button_save_update',
      desc: '',
      args: [],
    );
  }

  /// `Về trang chủ`
  String get button_backTo_homePage {
    return Intl.message(
      'Về trang chủ',
      name: 'button_backTo_homePage',
      desc: '',
      args: [],
    );
  }

  /// `Movies`
  String get movies {
    return Intl.message(
      'Movies',
      name: 'movies',
      desc: '',
      args: [],
    );
  }

  /// `Khách hàng`
  String get customer {
    return Intl.message(
      'Khách hàng',
      name: 'customer',
      desc: '',
      args: [],
    );
  }

  /// `Đơn vị bán hàng`
  String get pos {
    return Intl.message(
      'Đơn vị bán hàng',
      name: 'pos',
      desc: '',
      args: [],
    );
  }

  /// `Lý do thanh toán`
  String get reasonPay {
    return Intl.message(
      'Lý do thanh toán',
      name: 'reasonPay',
      desc: '',
      args: [],
    );
  }

  /// `Thời gian hiện tại`
  String get nowTime {
    return Intl.message(
      'Thời gian hiện tại',
      name: 'nowTime',
      desc: '',
      args: [],
    );
  }

  /// `Chuyển khoản`
  String get transfer {
    return Intl.message(
      'Chuyển khoản',
      name: 'transfer',
      desc: '',
      args: [],
    );
  }

  /// `Tiền mặt`
  String get cash {
    return Intl.message(
      'Tiền mặt',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Cà thẻ`
  String get card {
    return Intl.message(
      'Cà thẻ',
      name: 'card',
      desc: '',
      args: [],
    );
  }

  /// `Chọn ngân hàng`
  String get chooseBank {
    return Intl.message(
      'Chọn ngân hàng',
      name: 'chooseBank',
      desc: '',
      args: [],
    );
  }

  /// `Trang chủ`
  String get main_tabHome {
    return Intl.message(
      'Trang chủ',
      name: 'main_tabHome',
      desc: '',
      args: [],
    );
  }

  /// `Bỏ qua`
  String get button_skip {
    return Intl.message(
      'Bỏ qua',
      name: 'button_skip',
      desc: '',
      args: [],
    );
  }

  /// `Tài sản`
  String get main_tabProperties {
    return Intl.message(
      'Tài sản',
      name: 'main_tabProperties',
      desc: '',
      args: [],
    );
  }

  /// `Trợ giúp`
  String get main_tabHelp {
    return Intl.message(
      'Trợ giúp',
      name: 'main_tabHelp',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản`
  String get main_tabAccount {
    return Intl.message(
      'Tài khoản',
      name: 'main_tabAccount',
      desc: '',
      args: [],
    );
  }

  /// `Xác thực ngay`
  String get account_verifyNow {
    return Intl.message(
      'Xác thực ngay',
      name: 'account_verifyNow',
      desc: '',
      args: [],
    );
  }

  /// `Trải nghiệm ngay!`
  String get intro_experience {
    return Intl.message(
      'Trải nghiệm ngay!',
      name: 'intro_experience',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý bất động sản của bạn \n dễ dàng, hiệu quả`
  String get intro_manage {
    return Intl.message(
      'Quản lý bất động sản của bạn \n dễ dàng, hiệu quả',
      name: 'intro_manage',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and \n typesetting industry.`
  String get intro_en_manage {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and \n typesetting industry.',
      name: 'intro_en_manage',
      desc: '',
      args: [],
    );
  }

  /// `Tiện ích đa dạng, thanh toán đơn giản`
  String get intro_util {
    return Intl.message(
      'Tiện ích đa dạng, thanh toán đơn giản',
      name: 'intro_util',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhập thông tin BĐS \n nhanh chóng, chính xác`
  String get intro_update {
    return Intl.message(
      'Cập nhập thông tin BĐS \n nhanh chóng, chính xác',
      name: 'intro_update',
      desc: '',
      args: [],
    );
  }

  /// `Tài sản`
  String get main_properties {
    return Intl.message(
      'Tài sản',
      name: 'main_properties',
      desc: '',
      args: [],
    );
  }

  /// `Trợ giúp`
  String get main_help {
    return Intl.message(
      'Trợ giúp',
      name: 'main_help',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản`
  String get main_account {
    return Intl.message(
      'Tài khoản',
      name: 'main_account',
      desc: '',
      args: [],
    );
  }

  /// `Cộng đồng`
  String get main_community {
    return Intl.message(
      'Cộng đồng',
      name: 'main_community',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý yêu cầu`
  String get home_management_requests {
    return Intl.message(
      'Quản lý yêu cầu',
      name: 'home_management_requests',
      desc: '',
      args: [],
    );
  }

  /// `Tiện ích`
  String get home_util {
    return Intl.message(
      'Tiện ích',
      name: 'home_util',
      desc: '',
      args: [],
    );
  }

  /// `Tin BĐS`
  String get home_newsBDS {
    return Intl.message(
      'Tin BĐS',
      name: 'home_newsBDS',
      desc: '',
      args: [],
    );
  }

  /// `HOTLINE HỖ TRỢ`
  String get hotline_home_title1 {
    return Intl.message(
      'HOTLINE HỖ TRỢ',
      name: 'hotline_home_title1',
      desc: '',
      args: [],
    );
  }

  /// `THÔNG TIN 24/7`
  String get hotline_home_title2 {
    return Intl.message(
      'THÔNG TIN 24/7',
      name: 'hotline_home_title2',
      desc: '',
      args: [],
    );
  }

  /// `Hotline tòa nhà`
  String get hotline_block {
    return Intl.message(
      'Hotline tòa nhà',
      name: 'hotline_block',
      desc: '',
      args: [],
    );
  }

  /// `Hotline khẩn cấp`
  String get hotline_emergency {
    return Intl.message(
      'Hotline khẩn cấp',
      name: 'hotline_emergency',
      desc: '',
      args: [],
    );
  }

  /// `Cho thuê`
  String get for_lease {
    return Intl.message(
      'Cho thuê',
      name: 'for_lease',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có`
  String get for_lease_title1 {
    return Intl.message(
      'Bạn có',
      name: 'for_lease_title1',
      desc: '',
      args: [],
    );
  }

  /// `yêu cầu đăng kí cho thuê`
  String get for_lease_title2 {
    return Intl.message(
      'yêu cầu đăng kí cho thuê',
      name: 'for_lease_title2',
      desc: '',
      args: [],
    );
  }

  /// `Chọn sản phẩm muốn cho thuê`
  String get for_lease_productPick {
    return Intl.message(
      'Chọn sản phẩm muốn cho thuê',
      name: 'for_lease_productPick',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin sản phẩm`
  String get for_lease_productInfo {
    return Intl.message(
      'Thông tin sản phẩm',
      name: 'for_lease_productInfo',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin cho thuê`
  String get for_lease_leaseInfo {
    return Intl.message(
      'Thông tin cho thuê',
      name: 'for_lease_leaseInfo',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký cho thuê`
  String get leases_register {
    return Intl.message(
      'Đăng ký cho thuê',
      name: 'leases_register',
      desc: '',
      args: [],
    );
  }

  /// `Mã hợp đồng`
  String get leases_contractCode {
    return Intl.message(
      'Mã hợp đồng',
      name: 'leases_contractCode',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mã hợp đồng`
  String get leases_contractCode_hintText {
    return Intl.message(
      'Nhập mã hợp đồng',
      name: 'leases_contractCode_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Giá cho thuê`
  String get leases_leasePrice {
    return Intl.message(
      'Giá cho thuê',
      name: 'leases_leasePrice',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào giá cho thuê`
  String get leases_leasePrice_hintText {
    return Intl.message(
      'Nhập vào giá cho thuê',
      name: 'leases_leasePrice_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Giá cho thuê không hợp lệ`
  String get leases_leasePrice_errorText {
    return Intl.message(
      'Giá cho thuê không hợp lệ',
      name: 'leases_leasePrice_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Loại cho thuê`
  String get leases_leaseType {
    return Intl.message(
      'Loại cho thuê',
      name: 'leases_leaseType',
      desc: '',
      args: [],
    );
  }

  /// `Chọn loại cho thuê`
  String get leases_leaseType_hintText {
    return Intl.message(
      'Chọn loại cho thuê',
      name: 'leases_leaseType_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Bạn cần chọn loại cho thuê`
  String get leases_leaseType_errorText {
    return Intl.message(
      'Bạn cần chọn loại cho thuê',
      name: 'leases_leaseType_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Chu kì`
  String get leases_leasePeriod {
    return Intl.message(
      'Chu kì',
      name: 'leases_leasePeriod',
      desc: '',
      args: [],
    );
  }

  /// `Chọn chu kì`
  String get leases_leasePeriod_hintText {
    return Intl.message(
      'Chọn chu kì',
      name: 'leases_leasePeriod_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Đặt cọc`
  String get leases_leaseDeposit {
    return Intl.message(
      'Đặt cọc',
      name: 'leases_leaseDeposit',
      desc: '',
      args: [],
    );
  }

  /// `Chọn thời gian đặt cọc`
  String get leases_leaseDeposit_hintText {
    return Intl.message(
      'Chọn thời gian đặt cọc',
      name: 'leases_leaseDeposit_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Bạn cần chọn thời gian đặt cọc`
  String get leases_leaseDeposit_errorText {
    return Intl.message(
      'Bạn cần chọn thời gian đặt cọc',
      name: 'leases_leaseDeposit_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Ảnh mô tả`
  String get leases_leasePicture {
    return Intl.message(
      'Ảnh mô tả',
      name: 'leases_leasePicture',
      desc: '',
      args: [],
    );
  }

  /// `Lý do hủy/ trả về`
  String get leases_rejectCause {
    return Intl.message(
      'Lý do hủy/ trả về',
      name: 'leases_rejectCause',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin căn hộ`
  String get util_apartment_info {
    return Intl.message(
      'Thông tin căn hộ',
      name: 'util_apartment_info',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý hoá đơn`
  String get util_bill {
    return Intl.message(
      'Quản lý hoá đơn',
      name: 'util_bill',
      desc: '',
      args: [],
    );
  }

  /// `Ban quản lý toà nhà`
  String get util_business_trade {
    return Intl.message(
      'Ban quản lý toà nhà',
      name: 'util_business_trade',
      desc: '',
      args: [],
    );
  }

  /// `Hotline hỗ trợ`
  String get util_hotline {
    return Intl.message(
      'Hotline hỗ trợ',
      name: 'util_hotline',
      desc: '',
      args: [],
    );
  }

  /// `Nội quy toà nhà`
  String get util_internal_regulation {
    return Intl.message(
      'Nội quy toà nhà',
      name: 'util_internal_regulation',
      desc: '',
      args: [],
    );
  }

  /// `Cho thuê`
  String get util_lease {
    return Intl.message(
      'Cho thuê',
      name: 'util_lease',
      desc: '',
      args: [],
    );
  }

  /// `Ưu đãi`
  String get intro_endow {
    return Intl.message(
      'Ưu đãi',
      name: 'intro_endow',
      desc: '',
      args: [],
    );
  }

  /// `Dự án sắp mở bán`
  String get home_project_sale {
    return Intl.message(
      'Dự án sắp mở bán',
      name: 'home_project_sale',
      desc: '',
      args: [],
    );
  }

  /// `Dự án đang triển khai`
  String get home_deploying_plan {
    return Intl.message(
      'Dự án đang triển khai',
      name: 'home_deploying_plan',
      desc: '',
      args: [],
    );
  }

  /// `Giá từ`
  String get home_price {
    return Intl.message(
      'Giá từ',
      name: 'home_price',
      desc: '',
      args: [],
    );
  }

  /// `Bạn muốn tìm gì nào?`
  String get search_request {
    return Intl.message(
      'Bạn muốn tìm gì nào?',
      name: 'search_request',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản`
  String get main_tabProfile {
    return Intl.message(
      'Tài khoản',
      name: 'main_tabProfile',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý yêu cầu`
  String get request_management_title {
    return Intl.message(
      'Quản lý yêu cầu',
      name: 'request_management_title',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu hỗ trợ`
  String get request_management_supported {
    return Intl.message(
      'Yêu cầu hỗ trợ',
      name: 'request_management_supported',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu mới`
  String get request_new_requirement {
    return Intl.message(
      'Yêu cầu mới',
      name: 'request_new_requirement',
      desc: '',
      args: [],
    );
  }

  /// `Đang xử lý`
  String get request_processing {
    return Intl.message(
      'Đang xử lý',
      name: 'request_processing',
      desc: '',
      args: [],
    );
  }

  /// `Hoàn thành`
  String get request_done {
    return Intl.message(
      'Hoàn thành',
      name: 'request_done',
      desc: '',
      args: [],
    );
  }

  /// `Thêm tài sản`
  String get propertyManagement_addProperty {
    return Intl.message(
      'Thêm tài sản',
      name: 'propertyManagement_addProperty',
      desc: '',
      args: [],
    );
  }

  /// `Chuyển nhượng`
  String get propertyManagement_transferProperty {
    return Intl.message(
      'Chuyển nhượng',
      name: 'propertyManagement_transferProperty',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có`
  String get propertyManagement_youHave {
    return Intl.message(
      'Bạn có',
      name: 'propertyManagement_youHave',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý tài sản`
  String get propertyManagement_propertyManagement {
    return Intl.message(
      'Quản lý tài sản',
      name: 'propertyManagement_propertyManagement',
      desc: '',
      args: [],
    );
  }

  /// `sản phẩm bất động sản`
  String get propertyManagement_productCounterDescription2 {
    return Intl.message(
      'sản phẩm bất động sản',
      name: 'propertyManagement_productCounterDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu hỗ trợ thông tin dự án`
  String get request_project {
    return Intl.message(
      'Yêu cầu hỗ trợ thông tin dự án',
      name: 'request_project',
      desc: '',
      args: [],
    );
  }

  /// `Câu hỏi`
  String get request_question {
    return Intl.message(
      'Câu hỏi',
      name: 'request_question',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin yêu cầu`
  String get information_required {
    return Intl.message(
      'Thông tin yêu cầu',
      name: 'information_required',
      desc: '',
      args: [],
    );
  }

  /// `Họ & tên`
  String get request_name {
    return Intl.message(
      'Họ & tên',
      name: 'request_name',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại`
  String get request_number {
    return Intl.message(
      'Số điện thoại',
      name: 'request_number',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ Email`
  String get request_email_address {
    return Intl.message(
      'Địa chỉ Email',
      name: 'request_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Loại yêu cầu`
  String get request_type_request {
    return Intl.message(
      'Loại yêu cầu',
      name: 'request_type_request',
      desc: '',
      args: [],
    );
  }

  /// `Dự án`
  String get project {
    return Intl.message(
      'Dự án',
      name: 'project',
      desc: '',
      args: [],
    );
  }

  /// `Tiêu đề`
  String get request_title {
    return Intl.message(
      'Tiêu đề',
      name: 'request_title',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung`
  String get request_content {
    return Intl.message(
      'Nội dung',
      name: 'request_content',
      desc: '',
      args: [],
    );
  }

  /// `Lịch sử tiếp nhận`
  String get request_reception_history {
    return Intl.message(
      'Lịch sử tiếp nhận',
      name: 'request_reception_history',
      desc: '',
      args: [],
    );
  }

  /// `Tạo mới yêu cầu`
  String get create_request_management {
    return Intl.message(
      'Tạo mới yêu cầu',
      name: 'create_request_management',
      desc: '',
      args: [],
    );
  }

  /// `Khởi tạo`
  String get request_init {
    return Intl.message(
      'Khởi tạo',
      name: 'request_init',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung câu hỏi`
  String get create_content_request {
    return Intl.message(
      'Nội dung câu hỏi',
      name: 'create_content_request',
      desc: '',
      args: [],
    );
  }

  /// `Gửi yêu cầu`
  String get request_create {
    return Intl.message(
      'Gửi yêu cầu',
      name: 'request_create',
      desc: '',
      args: [],
    );
  }

  /// `Chưa nhập Họ và tên`
  String get create_name_not_entered {
    return Intl.message(
      'Chưa nhập Họ và tên',
      name: 'create_name_not_entered',
      desc: '',
      args: [],
    );
  }

  /// `Chưa nhập Số điện thoại`
  String get create_number_not_entered {
    return Intl.message(
      'Chưa nhập Số điện thoại',
      name: 'create_number_not_entered',
      desc: '',
      args: [],
    );
  }

  /// `Chưa nhập Địa chỉ Email`
  String get create_email_not_entered {
    return Intl.message(
      'Chưa nhập Địa chỉ Email',
      name: 'create_email_not_entered',
      desc: '',
      args: [],
    );
  }

  /// `Chưa nhập Loại yêu cầu`
  String get create_type_not_entered {
    return Intl.message(
      'Chưa nhập Loại yêu cầu',
      name: 'create_type_not_entered',
      desc: '',
      args: [],
    );
  }

  /// `Dự án không hợp lệ`
  String get create_project_not_entered {
    return Intl.message(
      'Dự án không hợp lệ',
      name: 'create_project_not_entered',
      desc: '',
      args: [],
    );
  }

  /// `Chưa nhập Tiêu đề`
  String get create_title_not_entered {
    return Intl.message(
      'Chưa nhập Tiêu đề',
      name: 'create_title_not_entered',
      desc: '',
      args: [],
    );
  }

  /// `Chưa nhập Nội dung yêu cầu`
  String get create_content_not_entered {
    return Intl.message(
      'Chưa nhập Nội dung yêu cầu',
      name: 'create_content_not_entered',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu của bạn đã được gửi đi. \n Bộ phận CSKH sẽ liên lạc lại với bạn`
  String get management_message {
    return Intl.message(
      'Yêu cầu của bạn đã được gửi đi. \n Bộ phận CSKH sẽ liên lạc lại với bạn',
      name: 'management_message',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký cho thuê căn hộ thành công. Bộ phận CSKH sẽ liên hệ với bạn trong 24h.`
  String get leases_register_success_message {
    return Intl.message(
      'Đăng ký cho thuê căn hộ thành công. Bộ phận CSKH sẽ liên hệ với bạn trong 24h.',
      name: 'leases_register_success_message',
      desc: '',
      args: [],
    );
  }

  /// `Tất cả`
  String get news_categoryAll {
    return Intl.message(
      'Tất cả',
      name: 'news_categoryAll',
      desc: '',
      args: [],
    );
  }

  /// `Tin nổi bật`
  String get news_hotNews {
    return Intl.message(
      'Tin nổi bật',
      name: 'news_hotNews',
      desc: '',
      args: [],
    );
  }

  /// `Tin dự án`
  String get news_projectNews {
    return Intl.message(
      'Tin dự án',
      name: 'news_projectNews',
      desc: '',
      args: [],
    );
  }

  /// `Tin tức`
  String get news_title {
    return Intl.message(
      'Tin tức',
      name: 'news_title',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết tin tức`
  String get news_title_detail {
    return Intl.message(
      'Chi tiết tin tức',
      name: 'news_title_detail',
      desc: '',
      args: [],
    );
  }

  /// `Thông báo`
  String get notification_title {
    return Intl.message(
      'Thông báo',
      name: 'notification_title',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa có thông báo nào!`
  String get notification_haveNoData {
    return Intl.message(
      'Bạn chưa có thông báo nào!',
      name: 'notification_haveNoData',
      desc: '',
      args: [],
    );
  }

  /// `Từ khoá phổ biến`
  String get search_popular_keywords {
    return Intl.message(
      'Từ khoá phổ biến',
      name: 'search_popular_keywords',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký tài khoản`
  String get signUp_title {
    return Intl.message(
      'Đăng ký tài khoản',
      name: 'signUp_title',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin đăng ký`
  String get signUp_info {
    return Intl.message(
      'Thông tin đăng ký',
      name: 'signUp_info',
      desc: '',
      args: [],
    );
  }

  /// `Chủ Đầu Tư`
  String get search_investors {
    return Intl.message(
      'Chủ Đầu Tư',
      name: 'search_investors',
      desc: '',
      args: [],
    );
  }

  /// `Dự án sắp mở bán`
  String get home_project_comming {
    return Intl.message(
      'Dự án sắp mở bán',
      name: 'home_project_comming',
      desc: '',
      args: [],
    );
  }

  /// `Dự án đã triển khai`
  String get home_project_handed_over {
    return Intl.message(
      'Dự án đã triển khai',
      name: 'home_project_handed_over',
      desc: '',
      args: [],
    );
  }

  /// `Ưu đãi`
  String get search_promotions {
    return Intl.message(
      'Ưu đãi',
      name: 'search_promotions',
      desc: '',
      args: [],
    );
  }

  /// `Tin tức`
  String get search_news {
    return Intl.message(
      'Tin tức',
      name: 'search_news',
      desc: '',
      args: [],
    );
  }

  /// `Xem tất cả`
  String get search_view_all {
    return Intl.message(
      'Xem tất cả',
      name: 'search_view_all',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất tài khoản`
  String get sign_out_text {
    return Intl.message(
      'Đăng xuất tài khoản',
      name: 'sign_out_text',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get sign_up_btn {
    return Intl.message(
      'Đăng nhập',
      name: 'sign_up_btn',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất tài khoản thành công`
  String get sign_out_success {
    return Intl.message(
      'Đăng xuất tài khoản thành công',
      name: 'sign_out_success',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get sign_out_btn {
    return Intl.message(
      'Đăng xuất',
      name: 'sign_out_btn',
      desc: '',
      args: [],
    );
  }

  /// `Đổi mật khẩu`
  String get reset_password_title {
    return Intl.message(
      'Đổi mật khẩu',
      name: 'reset_password_title',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập mật khẩu cũ và mới để thực hiện thay đổi mật khẩu`
  String get reset_password_describe {
    return Intl.message(
      'Vui lòng nhập mật khẩu cũ và mới để thực hiện thay đổi mật khẩu',
      name: 'reset_password_describe',
      desc: '',
      args: [],
    );
  }

  /// `Thay đổi mật khẩu`
  String get button_change_password_title {
    return Intl.message(
      'Thay đổi mật khẩu',
      name: 'button_change_password_title',
      desc: '',
      args: [],
    );
  }

  /// `Không tìm thấy kết quả`
  String get search_no_result {
    return Intl.message(
      'Không tìm thấy kết quả',
      name: 'search_no_result',
      desc: '',
      args: [],
    );
  }

  /// `Có`
  String get search_result_title_left {
    return Intl.message(
      'Có',
      name: 'search_result_title_left',
      desc: '',
      args: [],
    );
  }

  /// `kết quả tìm thấy`
  String get search_result_title_right {
    return Intl.message(
      'kết quả tìm thấy',
      name: 'search_result_title_right',
      desc: '',
      args: [],
    );
  }

  /// `Căn hộ`
  String get search_title_apartment {
    return Intl.message(
      'Căn hộ',
      name: 'search_title_apartment',
      desc: '',
      args: [],
    );
  }

  /// `dự án`
  String get search_title_project {
    return Intl.message(
      'dự án',
      name: 'search_title_project',
      desc: '',
      args: [],
    );
  }

  /// `chủ đầu tư`
  String get search_title_investor {
    return Intl.message(
      'chủ đầu tư',
      name: 'search_title_investor',
      desc: '',
      args: [],
    );
  }

  /// `ưu đãi`
  String get search_title_promotion {
    return Intl.message(
      'ưu đãi',
      name: 'search_title_promotion',
      desc: '',
      args: [],
    );
  }

  /// `tin tức`
  String get search_title_news {
    return Intl.message(
      'tin tức',
      name: 'search_title_news',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu hỗ trợ`
  String get service_require_supported {
    return Intl.message(
      'Yêu cầu hỗ trợ',
      name: 'service_require_supported',
      desc: '',
      args: [],
    );
  }

  /// `Không có dữ liệu hiển thị`
  String get no_data_show {
    return Intl.message(
      'Không có dữ liệu hiển thị',
      name: 'no_data_show',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý tài khoản`
  String get profile_management {
    return Intl.message(
      'Quản lý tài khoản',
      name: 'profile_management',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi đăng xuất`
  String get alertTitle_error_log_out {
    return Intl.message(
      'Lỗi đăng xuất',
      name: 'alertTitle_error_log_out',
      desc: '',
      args: [],
    );
  }

  /// `Đã phát sinh lỗi khi đăng xuất`
  String get alertMessage_log_out {
    return Intl.message(
      'Đã phát sinh lỗi khi đăng xuất',
      name: 'alertMessage_log_out',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get text_ok {
    return Intl.message(
      'Ok',
      name: 'text_ok',
      desc: '',
      args: [],
    );
  }

  /// `Upload avatar thất bại`
  String get text_avatar_upload_failed {
    return Intl.message(
      'Upload avatar thất bại',
      name: 'text_avatar_upload_failed',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin cá nhân`
  String get profile_infomation {
    return Intl.message(
      'Thông tin cá nhân',
      name: 'profile_infomation',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật thông tin`
  String get update_profile_info {
    return Intl.message(
      'Cập nhật thông tin',
      name: 'update_profile_info',
      desc: '',
      args: [],
    );
  }

  /// `Đổi mật khẩu`
  String get change_password {
    return Intl.message(
      'Đổi mật khẩu',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Ngày sinh`
  String get profile_date_birth {
    return Intl.message(
      'Ngày sinh',
      name: 'profile_date_birth',
      desc: '',
      args: [],
    );
  }

  /// `Giới tính`
  String get profile_gender {
    return Intl.message(
      'Giới tính',
      name: 'profile_gender',
      desc: '',
      args: [],
    );
  }

  /// `Điện thoại`
  String get profile_phone {
    return Intl.message(
      'Điện thoại',
      name: 'profile_phone',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ email`
  String get profile_email {
    return Intl.message(
      'Địa chỉ email',
      name: 'profile_email',
      desc: '',
      args: [],
    );
  }

  /// `Số CMND/ CCCD`
  String get profile_identities {
    return Intl.message(
      'Số CMND/ CCCD',
      name: 'profile_identities',
      desc: '',
      args: [],
    );
  }

  /// `Ngày cấp`
  String get profile_identities_date {
    return Intl.message(
      'Ngày cấp',
      name: 'profile_identities_date',
      desc: '',
      args: [],
    );
  }

  /// `Nơi cấp`
  String get profile_place {
    return Intl.message(
      'Nơi cấp',
      name: 'profile_place',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ`
  String get profile_address {
    return Intl.message(
      'Địa chỉ',
      name: 'profile_address',
      desc: '',
      args: [],
    );
  }

  /// `Nhập hoặc chọn địa chỉ`
  String get import_or_select_address {
    return Intl.message(
      'Nhập hoặc chọn địa chỉ',
      name: 'import_or_select_address',
      desc: '',
      args: [],
    );
  }

  /// `Lưu cập nhập`
  String get update_save_profile_info {
    return Intl.message(
      'Lưu cập nhập',
      name: 'update_save_profile_info',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật thông tin tài khoản thành công`
  String get update_information_success {
    return Intl.message(
      'Cập nhật thông tin tài khoản thành công',
      name: 'update_information_success',
      desc: '',
      args: [],
    );
  }

  /// `Lưu vào thư viện`
  String get qr_save_library {
    return Intl.message(
      'Lưu vào thư viện',
      name: 'qr_save_library',
      desc: '',
      args: [],
    );
  }

  /// `Chia sẻ`
  String get qr_share {
    return Intl.message(
      'Chia sẻ',
      name: 'qr_share',
      desc: '',
      args: [],
    );
  }

  /// `Lưu vào thư viện thành công`
  String get save_library_success {
    return Intl.message(
      'Lưu vào thư viện thành công',
      name: 'save_library_success',
      desc: '',
      args: [],
    );
  }

  /// `Lưu vào thư viện thất bại`
  String get save_library_error {
    return Intl.message(
      'Lưu vào thư viện thất bại',
      name: 'save_library_error',
      desc: '',
      args: [],
    );
  }

  /// `Chia sẻ thất bại`
  String get share_error {
    return Intl.message(
      'Chia sẻ thất bại',
      name: 'share_error',
      desc: '',
      args: [],
    );
  }

  /// `Xác thực tài khoản thất bại`
  String get verify_profile_error {
    return Intl.message(
      'Xác thực tài khoản thất bại',
      name: 'verify_profile_error',
      desc: '',
      args: [],
    );
  }

  /// `Xác thực tài khoản`
  String get title_verify_profile {
    return Intl.message(
      'Xác thực tài khoản',
      name: 'title_verify_profile',
      desc: '',
      args: [],
    );
  }

  /// `Quay lại`
  String get text_back {
    return Intl.message(
      'Quay lại',
      name: 'text_back',
      desc: '',
      args: [],
    );
  }

  /// `Hoàn tất xác thực`
  String get complete_verify_profile {
    return Intl.message(
      'Hoàn tất xác thực',
      name: 'complete_verify_profile',
      desc: '',
      args: [],
    );
  }

  /// `Chưa xác thực`
  String get not_verify_profile {
    return Intl.message(
      'Chưa xác thực',
      name: 'not_verify_profile',
      desc: '',
      args: [],
    );
  }

  /// `Đã xác thực`
  String get done_verify_profile {
    return Intl.message(
      'Đã xác thực',
      name: 'done_verify_profile',
      desc: '',
      args: [],
    );
  }

  /// `Xác thực tài khoản để nhận nhiều thông tin ưu đãi hấp dẫn hơn!`
  String get text_verify_profile {
    return Intl.message(
      'Xác thực tài khoản để nhận nhiều thông tin ưu đãi hấp dẫn hơn!',
      name: 'text_verify_profile',
      desc: '',
      args: [],
    );
  }

  /// `Chứng minh nhân dân`
  String get text_identity_card {
    return Intl.message(
      'Chứng minh nhân dân',
      name: 'text_identity_card',
      desc: '',
      args: [],
    );
  }

  /// `Mặt trước CMND`
  String get text_front_identity {
    return Intl.message(
      'Mặt trước CMND',
      name: 'text_front_identity',
      desc: '',
      args: [],
    );
  }

  /// `Mặt sau CMND`
  String get text_behind_identity {
    return Intl.message(
      'Mặt sau CMND',
      name: 'text_behind_identity',
      desc: '',
      args: [],
    );
  }

  /// `Ảnh chân dung`
  String get text_portrait {
    return Intl.message(
      'Ảnh chân dung',
      name: 'text_portrait',
      desc: '',
      args: [],
    );
  }

  /// `Ảnh chụp chân dung`
  String get text_image_portrait {
    return Intl.message(
      'Ảnh chụp chân dung',
      name: 'text_image_portrait',
      desc: '',
      args: [],
    );
  }

  /// `*Lưu ý:`
  String get text_note {
    return Intl.message(
      '*Lưu ý:',
      name: 'text_note',
      desc: '',
      args: [],
    );
  }

  /// `Chụp thấy mặt và cầm CMND`
  String get text_describe_verify {
    return Intl.message(
      'Chụp thấy mặt và cầm CMND',
      name: 'text_describe_verify',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu phải chứa ít nhất 8 ký tự và bao gồm cả chữ, số, chữ hoa.`
  String get text_error_password {
    return Intl.message(
      'Mật khẩu phải chứa ít nhất 8 ký tự và bao gồm cả chữ, số, chữ hoa.',
      name: 'text_error_password',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mật khẩu cũ`
  String get text_old_password {
    return Intl.message(
      'Nhập mật khẩu cũ',
      name: 'text_old_password',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mật khẩu mới`
  String get text_new_password {
    return Intl.message(
      'Nhập mật khẩu mới',
      name: 'text_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Nhập lại mật khẩu mới`
  String get text_confirm_new_password {
    return Intl.message(
      'Nhập lại mật khẩu mới',
      name: 'text_confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Thay đổi mật khẩu thành công`
  String get alertTitle_change_password_success {
    return Intl.message(
      'Thay đổi mật khẩu thành công',
      name: 'alertTitle_change_password_success',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu mới không được trùng mật khẩu cũ`
  String get text_new_password_old_password {
    return Intl.message(
      'Mật khẩu mới không được trùng mật khẩu cũ',
      name: 'text_new_password_old_password',
      desc: '',
      args: [],
    );
  }

  /// `Nhập lại mật khẩu không trùng với mật khẩu mới`
  String get text_password_new_password {
    return Intl.message(
      'Nhập lại mật khẩu không trùng với mật khẩu mới',
      name: 'text_password_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Trung tâm trợ giúp`
  String get helper_title_center {
    return Intl.message(
      'Trung tâm trợ giúp',
      name: 'helper_title_center',
      desc: '',
      args: [],
    );
  }

  /// `CarePlus giúp được gì cho bạn?`
  String get text_careplus_help_you {
    return Intl.message(
      'CarePlus giúp được gì cho bạn?',
      name: 'text_careplus_help_you',
      desc: '',
      args: [],
    );
  }

  /// `Bạn cần hỗ trợ?`
  String get text_menu_list {
    return Intl.message(
      'Bạn cần hỗ trợ?',
      name: 'text_menu_list',
      desc: '',
      args: [],
    );
  }

  /// `Điều khoản & chính sách`
  String get text_rules_list {
    return Intl.message(
      'Điều khoản & chính sách',
      name: 'text_rules_list',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách Dự án`
  String get title_project_list {
    return Intl.message(
      'Danh sách Dự án',
      name: 'title_project_list',
      desc: '',
      args: [],
    );
  }

  /// `File đính kèm ( Tối đa 5 file, Dung lượng <5Mb đối với ảnh, <10MB đối với file)`
  String get service_request_describe {
    return Intl.message(
      'File đính kèm ( Tối đa 5 file, Dung lượng <5Mb đối với ảnh, <10MB đối với file)',
      name: 'service_request_describe',
      desc: '',
      args: [],
    );
  }

  /// `Đã xảy ra lỗi`
  String get error_occurred {
    return Intl.message(
      'Đã xảy ra lỗi',
      name: 'error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Đã xảy ra lỗi khi tải tệp`
  String get error_launch {
    return Intl.message(
      'Đã xảy ra lỗi khi tải tệp',
      name: 'error_launch',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin chính sách ưu đãi`
  String get property_delivery_preferentialPolicy_info {
    return Intl.message(
      'Thông tin chính sách ưu đãi',
      name: 'property_delivery_preferentialPolicy_info',
      desc: '',
      args: [],
    );
  }

  /// `Chính sách ưu đãi`
  String get property_delivery_preferentialPolicy {
    return Intl.message(
      'Chính sách ưu đãi',
      name: 'property_delivery_preferentialPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Chính sách triết khấu`
  String get property_delivery_discountPolicy {
    return Intl.message(
      'Chính sách triết khấu',
      name: 'property_delivery_discountPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Chính sách thanh toán`
  String get property_delivery_paymentPolicy {
    return Intl.message(
      'Chính sách thanh toán',
      name: 'property_delivery_paymentPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Chính sách bảo mật`
  String get property_delivery_privacyPolicy {
    return Intl.message(
      'Chính sách bảo mật',
      name: 'property_delivery_privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Vay vốn ngân hàng`
  String get property_delivery_bankLoan {
    return Intl.message(
      'Vay vốn ngân hàng',
      name: 'property_delivery_bankLoan',
      desc: '',
      args: [],
    );
  }

  /// `Hoàn tất bàn giao`
  String get property_delivery_completeDelivery {
    return Intl.message(
      'Hoàn tất bàn giao',
      name: 'property_delivery_completeDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Hồ sơ`
  String get property_delivery_file {
    return Intl.message(
      'Hồ sơ',
      name: 'property_delivery_file',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách hồ sơ`
  String get property_delivery_fileList {
    return Intl.message(
      'Danh sách hồ sơ',
      name: 'property_delivery_fileList',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách hồ sơ trống`
  String get property_delivery_fileList_empty {
    return Intl.message(
      'Danh sách hồ sơ trống',
      name: 'property_delivery_fileList_empty',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin kiểm tra bàn giao`
  String get property_delivery_checkDelivery_detail {
    return Intl.message(
      'Thông tin kiểm tra bàn giao',
      name: 'property_delivery_checkDelivery_detail',
      desc: '',
      args: [],
    );
  }

  /// `Hạng mục đạt`
  String get property_delivery_itemSuccess {
    return Intl.message(
      'Hạng mục đạt',
      name: 'property_delivery_itemSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Hạng mục chưa đạt`
  String get property_delivery_itemFail {
    return Intl.message(
      'Hạng mục chưa đạt',
      name: 'property_delivery_itemFail',
      desc: '',
      args: [],
    );
  }

  /// `Không có hạng mục đạt`
  String get property_delivery_noItemSuccess {
    return Intl.message(
      'Không có hạng mục đạt',
      name: 'property_delivery_noItemSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Không có hạng mục đạt`
  String get property_delivery_noItemFail {
    return Intl.message(
      'Không có hạng mục đạt',
      name: 'property_delivery_noItemFail',
      desc: '',
      args: [],
    );
  }

  /// `Nhận bàn giao`
  String get property_detail_acceptHandOver {
    return Intl.message(
      'Nhận bàn giao',
      name: 'property_detail_acceptHandOver',
      desc: '',
      args: [],
    );
  }

  /// `Bàn giao lần`
  String get property_detail_handOverTimes {
    return Intl.message(
      'Bàn giao lần',
      name: 'property_detail_handOverTimes',
      desc: '',
      args: [],
    );
  }

  /// `Thanh toán`
  String get transaction_history_payment {
    return Intl.message(
      'Thanh toán',
      name: 'transaction_history_payment',
      desc: '',
      args: [],
    );
  }

  /// `Trễ hạn thanh toán`
  String get transaction_history_latePayment {
    return Intl.message(
      'Trễ hạn thanh toán',
      name: 'transaction_history_latePayment',
      desc: '',
      args: [],
    );
  }

  /// `Đã thanh toán`
  String get transaction_history_donePayment {
    return Intl.message(
      'Đã thanh toán',
      name: 'transaction_history_donePayment',
      desc: '',
      args: [],
    );
  }

  /// `Chưa thanh toán`
  String get transaction_history_noteDonePayment {
    return Intl.message(
      'Chưa thanh toán',
      name: 'transaction_history_noteDonePayment',
      desc: '',
      args: [],
    );
  }

  /// `Ngày đến hạn`
  String get transaction_history_paymentDueDate {
    return Intl.message(
      'Ngày đến hạn',
      name: 'transaction_history_paymentDueDate',
      desc: '',
      args: [],
    );
  }

  /// `Ngày thanh toán`
  String get transaction_history_paymentDate {
    return Intl.message(
      'Ngày thanh toán',
      name: 'transaction_history_paymentDate',
      desc: '',
      args: [],
    );
  }

  /// `Sau khi thanh toán đợt`
  String get transaction_history_paymentStatus_text {
    return Intl.message(
      'Sau khi thanh toán đợt',
      name: 'transaction_history_paymentStatus_text',
      desc: '',
      args: [],
    );
  }

  /// `Số tiền`
  String get transaction_history_money {
    return Intl.message(
      'Số tiền',
      name: 'transaction_history_money',
      desc: '',
      args: [],
    );
  }

  /// `Lãi phạt (nếu có)`
  String get transaction_history_penaltyMoney {
    return Intl.message(
      'Lãi phạt (nếu có)',
      name: 'transaction_history_penaltyMoney',
      desc: '',
      args: [],
    );
  }

  /// `Tiền mặt`
  String get transaction_history_byCash {
    return Intl.message(
      'Tiền mặt',
      name: 'transaction_history_byCash',
      desc: '',
      args: [],
    );
  }

  /// `Chuyển khoản`
  String get transaction_history_byBankTransfer {
    return Intl.message(
      'Chuyển khoản',
      name: 'transaction_history_byBankTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Phiếu thu`
  String get transaction_history_receipt {
    return Intl.message(
      'Phiếu thu',
      name: 'transaction_history_receipt',
      desc: '',
      args: [],
    );
  }

  /// `Phương thức ATT`
  String get transaction_history_ATTMethod {
    return Intl.message(
      'Phương thức ATT',
      name: 'transaction_history_ATTMethod',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết giao dịch`
  String get transaction_progress_transactionDetail {
    return Intl.message(
      'Chi tiết giao dịch',
      name: 'transaction_progress_transactionDetail',
      desc: '',
      args: [],
    );
  }

  /// `Giao dịch thành công`
  String get transaction_progress_transactionSuccessful {
    return Intl.message(
      'Giao dịch thành công',
      name: 'transaction_progress_transactionSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Tiến độ dự án`
  String get transaction_progress_projectProgress {
    return Intl.message(
      'Tiến độ dự án',
      name: 'transaction_progress_projectProgress',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết thanh toán`
  String get transaction_progress_paymentDetail {
    return Intl.message(
      'Chi tiết thanh toán',
      name: 'transaction_progress_paymentDetail',
      desc: '',
      args: [],
    );
  }

  /// `Số tiền thanh toán`
  String get transaction_progress_paymentMoney {
    return Intl.message(
      'Số tiền thanh toán',
      name: 'transaction_progress_paymentMoney',
      desc: '',
      args: [],
    );
  }

  /// `Tổng số tiền`
  String get transaction_progress_totalMoney {
    return Intl.message(
      'Tổng số tiền',
      name: 'transaction_progress_totalMoney',
      desc: '',
      args: [],
    );
  }

  /// `Tỉ lệ thanh toán`
  String get transaction_progress_paymentRate {
    return Intl.message(
      'Tỉ lệ thanh toán',
      name: 'transaction_progress_paymentRate',
      desc: '',
      args: [],
    );
  }

  /// `Thanh toán tiến độ`
  String get transaction_progress_payment {
    return Intl.message(
      'Thanh toán tiến độ',
      name: 'transaction_progress_payment',
      desc: '',
      args: [],
    );
  }

  /// `Tên dự án`
  String get transaction_progress_projectName {
    return Intl.message(
      'Tên dự án',
      name: 'transaction_progress_projectName',
      desc: '',
      args: [],
    );
  }

  /// `Chọn dự án`
  String get transaction_progress_projectName_hintText {
    return Intl.message(
      'Chọn dự án',
      name: 'transaction_progress_projectName_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Mã căn hộ/ Sản phẩm`
  String get transaction_progress_productCode {
    return Intl.message(
      'Mã căn hộ/ Sản phẩm',
      name: 'transaction_progress_productCode',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mã căn hộ`
  String get transaction_progress_productCode_hintText {
    return Intl.message(
      'Nhập mã căn hộ',
      name: 'transaction_progress_productCode_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Đợt thanh toán`
  String get transaction_progress_paymentInstallment {
    return Intl.message(
      'Đợt thanh toán',
      name: 'transaction_progress_paymentInstallment',
      desc: '',
      args: [],
    );
  }

  /// `Chọn đợt thanh toán`
  String get transaction_progress_paymentInstallment_hintText {
    return Intl.message(
      'Chọn đợt thanh toán',
      name: 'transaction_progress_paymentInstallment_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mã OTP`
  String get transaction_progress_enterOTP {
    return Intl.message(
      'Nhập mã OTP',
      name: 'transaction_progress_enterOTP',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập mã OTP gồm 6 số được gửi về số điện thoại 0987***761 để thực hiện giao dịch`
  String get transaction_progress_enterOTP_note {
    return Intl.message(
      'Vui lòng nhập mã OTP gồm 6 số được gửi về số điện thoại 0987***761 để thực hiện giao dịch',
      name: 'transaction_progress_enterOTP_note',
      desc: '',
      args: [],
    );
  }

  /// `Thực hiện giao dịch`
  String get transaction_progress_conductTransaction {
    return Intl.message(
      'Thực hiện giao dịch',
      name: 'transaction_progress_conductTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Số CMND`
  String get ycgcDetail_identityNumber {
    return Intl.message(
      'Số CMND',
      name: 'ycgcDetail_identityNumber',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ thường trú`
  String get ycgcDetail_permanentAddress {
    return Intl.message(
      'Địa chỉ thường trú',
      name: 'ycgcDetail_permanentAddress',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ liên hệ`
  String get ycgcDetail_address {
    return Intl.message(
      'Địa chỉ liên hệ',
      name: 'ycgcDetail_address',
      desc: '',
      args: [],
    );
  }

  /// `Loại bất động sản`
  String get ycgcDetail_propertyType {
    return Intl.message(
      'Loại bất động sản',
      name: 'ycgcDetail_propertyType',
      desc: '',
      args: [],
    );
  }

  /// `Số tiền đăng ký`
  String get ycgcDetail_registrationAmount {
    return Intl.message(
      'Số tiền đăng ký',
      name: 'ycgcDetail_registrationAmount',
      desc: '',
      args: [],
    );
  }

  /// `Mã sản phẩm`
  String get ycgcDetail_productCode {
    return Intl.message(
      'Mã sản phẩm',
      name: 'ycgcDetail_productCode',
      desc: '',
      args: [],
    );
  }

  /// `Ghi chú`
  String get ycgcDetail_note {
    return Intl.message(
      'Ghi chú',
      name: 'ycgcDetail_note',
      desc: '',
      args: [],
    );
  }

  /// `Đã giữ chỗ`
  String get ycgcStatus_reservedPlace {
    return Intl.message(
      'Đã giữ chỗ',
      name: 'ycgcStatus_reservedPlace',
      desc: '',
      args: [],
    );
  }

  /// `Chờ xác nhận`
  String get ycgcStatus_pending {
    return Intl.message(
      'Chờ xác nhận',
      name: 'ycgcStatus_pending',
      desc: '',
      args: [],
    );
  }

  /// `Đã hủy`
  String get ycgcStatus_cancelReservations {
    return Intl.message(
      'Đã hủy',
      name: 'ycgcStatus_cancelReservations',
      desc: '',
      args: [],
    );
  }

  /// `Gọi hotline`
  String get ycgcStatus_callHotline {
    return Intl.message(
      'Gọi hotline',
      name: 'ycgcStatus_callHotline',
      desc: '',
      args: [],
    );
  }

  /// `Đang xử lý`
  String get ycgcStatus_processing {
    return Intl.message(
      'Đang xử lý',
      name: 'ycgcStatus_processing',
      desc: '',
      args: [],
    );
  }

  /// `GD thành công`
  String get ycgcStatus_transactionSuccess {
    return Intl.message(
      'GD thành công',
      name: 'ycgcStatus_transactionSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Chờ hoàn tiền`
  String get ycgcStatus_wattingRefund {
    return Intl.message(
      'Chờ hoàn tiền',
      name: 'ycgcStatus_wattingRefund',
      desc: '',
      args: [],
    );
  }

  /// `Chờ giao dịch`
  String get ycgcStatus_wattingTransaction {
    return Intl.message(
      'Chờ giao dịch',
      name: 'ycgcStatus_wattingTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Đã ráp SP`
  String get ycgcStatus_doingTransaction {
    return Intl.message(
      'Đã ráp SP',
      name: 'ycgcStatus_doingTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Không thành công`
  String get ycgcStatus_unSuccess {
    return Intl.message(
      'Không thành công',
      name: 'ycgcStatus_unSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Chờ HĐ cọc`
  String get propertyStatus_waitingContract {
    return Intl.message(
      'Chờ HĐ cọc',
      name: 'propertyStatus_waitingContract',
      desc: '',
      args: [],
    );
  }

  /// `Đã bàn giao`
  String get propertyStatus_delivered {
    return Intl.message(
      'Đã bàn giao',
      name: 'propertyStatus_delivered',
      desc: '',
      args: [],
    );
  }

  /// `Bàn giao sau`
  String get propertyStatus_deliverLater {
    return Intl.message(
      'Bàn giao sau',
      name: 'propertyStatus_deliverLater',
      desc: '',
      args: [],
    );
  }

  /// `Bàn giao nhà`
  String get propertyStatus_houseDeliver {
    return Intl.message(
      'Bàn giao nhà',
      name: 'propertyStatus_houseDeliver',
      desc: '',
      args: [],
    );
  }

  /// `TT Đợt`
  String get propertyStatus_payments {
    return Intl.message(
      'TT Đợt',
      name: 'propertyStatus_payments',
      desc: '',
      args: [],
    );
  }

  /// `Thanh Toán Đợt`
  String get propertyStatus_fullPayments {
    return Intl.message(
      'Thanh Toán Đợt',
      name: 'propertyStatus_fullPayments',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký chuyển nhượng`
  String get button_registrationTransfer {
    return Intl.message(
      'Đăng ký chuyển nhượng',
      name: 'button_registrationTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Dễ dàng chuyển nhượng BĐS khi có nhu cầu`
  String get propertyTransfer_description {
    return Intl.message(
      'Dễ dàng chuyển nhượng BĐS khi có nhu cầu',
      name: 'propertyTransfer_description',
      desc: '',
      args: [],
    );
  }

  /// `Sản phẩm đã chuyển nhượng`
  String get propertyTransfer_deliveredProduct {
    return Intl.message(
      'Sản phẩm đã chuyển nhượng',
      name: 'propertyTransfer_deliveredProduct',
      desc: '',
      args: [],
    );
  }

  /// `Giá chuyển nhượng`
  String get propertyTransfer_transferPrice {
    return Intl.message(
      'Giá chuyển nhượng',
      name: 'propertyTransfer_transferPrice',
      desc: '',
      args: [],
    );
  }

  /// `Chênh lệch`
  String get propertyTransfer_difference {
    return Intl.message(
      'Chênh lệch',
      name: 'propertyTransfer_difference',
      desc: '',
      args: [],
    );
  }

  /// `Tỉ lệ hoa hồng`
  String get propertyTransaction_commissionRate {
    return Intl.message(
      'Tỉ lệ hoa hồng',
      name: 'propertyTransaction_commissionRate',
      desc: '',
      args: [],
    );
  }

  /// `Trạng thái chuyển nhượng`
  String get propertyTransaction_transferStatus {
    return Intl.message(
      'Trạng thái chuyển nhượng',
      name: 'propertyTransaction_transferStatus',
      desc: '',
      args: [],
    );
  }

  /// `Chờ xác nhận`
  String get transferType_waitingConfirm {
    return Intl.message(
      'Chờ xác nhận',
      name: 'transferType_waitingConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Đã xác nhận`
  String get transferType_Confirmed {
    return Intl.message(
      'Đã xác nhận',
      name: 'transferType_Confirmed',
      desc: '',
      args: [],
    );
  }

  /// `Hủy/ Trả về`
  String get transferType_canceled {
    return Intl.message(
      'Hủy/ Trả về',
      name: 'transferType_canceled',
      desc: '',
      args: [],
    );
  }

  /// `Chuyển nhượng sản phẩm`
  String get propertyTransfer_productTransfer {
    return Intl.message(
      'Chuyển nhượng sản phẩm',
      name: 'propertyTransfer_productTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký chuyển nhượng`
  String get registerTransfer_registrationTransfer {
    return Intl.message(
      'Đăng ký chuyển nhượng',
      name: 'registerTransfer_registrationTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin sản phẩm`
  String get registerTransfer_productDetail {
    return Intl.message(
      'Thông tin sản phẩm',
      name: 'registerTransfer_productDetail',
      desc: '',
      args: [],
    );
  }

  /// `Mã sản phẩm`
  String get registerTransfer_productCode {
    return Intl.message(
      'Mã sản phẩm',
      name: 'registerTransfer_productCode',
      desc: '',
      args: [],
    );
  }

  /// `Giá hợp đồng`
  String get registerTransfer_contractPrice {
    return Intl.message(
      'Giá hợp đồng',
      name: 'registerTransfer_contractPrice',
      desc: '',
      args: [],
    );
  }

  /// `Giá chuyển nhượng`
  String get registerTransfer_transferPrice {
    return Intl.message(
      'Giá chuyển nhượng',
      name: 'registerTransfer_transferPrice',
      desc: '',
      args: [],
    );
  }

  /// `Phí hoa hồng`
  String get registerTransfer_commission {
    return Intl.message(
      'Phí hoa hồng',
      name: 'registerTransfer_commission',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin khách hàng`
  String get registerTransfer_customerDetail {
    return Intl.message(
      'Thông tin khách hàng',
      name: 'registerTransfer_customerDetail',
      desc: '',
      args: [],
    );
  }

  /// `Mã khách hàng`
  String get registerTransfer_customerCode {
    return Intl.message(
      'Mã khách hàng',
      name: 'registerTransfer_customerCode',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào mã khách hàng`
  String get registerTransfer_customerCode_hintText {
    return Intl.message(
      'Nhập vào mã khách hàng',
      name: 'registerTransfer_customerCode_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa nhập mã khách hàng`
  String get registerTransfer_customerCode_errorText {
    return Intl.message(
      'Bạn chưa nhập mã khách hàng',
      name: 'registerTransfer_customerCode_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Họ tên khách hàng`
  String get registerTransfer_customerFullName {
    return Intl.message(
      'Họ tên khách hàng',
      name: 'registerTransfer_customerFullName',
      desc: '',
      args: [],
    );
  }

  /// `Nhập vào họ tên khách hàng`
  String get registerTransfer_customerFullName_hintText {
    return Intl.message(
      'Nhập vào họ tên khách hàng',
      name: 'registerTransfer_customerFullName_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa nhập họ tên khách hàng`
  String get registerTransfer_customerFullName_errorText {
    return Intl.message(
      'Bạn chưa nhập họ tên khách hàng',
      name: 'registerTransfer_customerFullName_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ liên lạc`
  String get registerTransfer_contactAddress {
    return Intl.message(
      'Địa chỉ liên lạc',
      name: 'registerTransfer_contactAddress',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ`
  String get registerTransfer_address {
    return Intl.message(
      'Địa chỉ',
      name: 'registerTransfer_address',
      desc: '',
      args: [],
    );
  }

  /// `THÔNG TIN ĐĂNG KÝ CHUYỂN NHƯỢNG`
  String get registerTransfer_registrationTransferDetail {
    return Intl.message(
      'THÔNG TIN ĐĂNG KÝ CHUYỂN NHƯỢNG',
      name: 'registerTransfer_registrationTransferDetail',
      desc: '',
      args: [],
    );
  }

  /// `Mã hợp đồng`
  String get registerTransfer_contractCode {
    return Intl.message(
      'Mã hợp đồng',
      name: 'registerTransfer_contractCode',
      desc: '',
      args: [],
    );
  }

  /// `Số điện thoại`
  String get registerTransfer_phoneNumber {
    return Intl.message(
      'Số điện thoại',
      name: 'registerTransfer_phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ Email`
  String get registerTransfer_emailAddress {
    return Intl.message(
      'Địa chỉ Email',
      name: 'registerTransfer_emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận chuyển nhượng`
  String get button_transferConfirm {
    return Intl.message(
      'Xác nhận chuyển nhượng',
      name: 'button_transferConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký chuyển nhượng thành công. Bộ phận CSKH sẽ liên hệ với bạn trong 24h.`
  String get alertTitle_registerTransferSucess {
    return Intl.message(
      'Đăng ký chuyển nhượng thành công. Bộ phận CSKH sẽ liên hệ với bạn trong 24h.',
      name: 'alertTitle_registerTransferSucess',
      desc: '',
      args: [],
    );
  }

  /// `Loại yêu cầu không tìm thấy`
  String get snackbarMessage_requestTypeNotFound {
    return Intl.message(
      'Loại yêu cầu không tìm thấy',
      name: 'snackbarMessage_requestTypeNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Đã xảy ra lỗi khi tạo mới yêu cầu`
  String get snackbarMessage_errorWhenRegisterRequest {
    return Intl.message(
      'Đã xảy ra lỗi khi tạo mới yêu cầu',
      name: 'snackbarMessage_errorWhenRegisterRequest',
      desc: '',
      args: [],
    );
  }

  /// `Số tiền đã thanh toán`
  String get propertyDetail_totalAmoutPaid {
    return Intl.message(
      'Số tiền đã thanh toán',
      name: 'propertyDetail_totalAmoutPaid',
      desc: '',
      args: [],
    );
  }

  /// `Số tiền còn lại`
  String get propertyDetail_totalAmoutHaveLeft {
    return Intl.message(
      'Số tiền còn lại',
      name: 'propertyDetail_totalAmoutHaveLeft',
      desc: '',
      args: [],
    );
  }

  /// `Tiến độ thanh toán`
  String get propertyDetail_paymentHistory {
    return Intl.message(
      'Tiến độ thanh toán',
      name: 'propertyDetail_paymentHistory',
      desc: '',
      args: [],
    );
  }

  /// `Check list`
  String get propertyDetail_checkList {
    return Intl.message(
      'Check list',
      name: 'propertyDetail_checkList',
      desc: '',
      args: [],
    );
  }

  /// `Chuyển nhượng sản phẩm`
  String get button_productTransfer {
    return Intl.message(
      'Chuyển nhượng sản phẩm',
      name: 'button_productTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa hoàn tất hợp đồng cọc`
  String get propertyDetail_youHaveNotCompletedTheContract {
    return Intl.message(
      'Bạn chưa hoàn tất hợp đồng cọc',
      name: 'propertyDetail_youHaveNotCompletedTheContract',
      desc: '',
      args: [],
    );
  }

  /// `Hợp đồng cọc hoàn tất bởi hồ sơ bản cứng`
  String get propertyDetail_contractCompletedByHardCopyRecords {
    return Intl.message(
      'Hợp đồng cọc hoàn tất bởi hồ sơ bản cứng',
      name: 'propertyDetail_contractCompletedByHardCopyRecords',
      desc: '',
      args: [],
    );
  }

  /// `Tôi đã hoàn tất hợp đồng cọc bởi hồ sơ bản cứng`
  String get propertyDetail_iHaveCompletedTheContractByHardcopyDocuments {
    return Intl.message(
      'Tôi đã hoàn tất hợp đồng cọc bởi hồ sơ bản cứng',
      name: 'propertyDetail_iHaveCompletedTheContractByHardcopyDocuments',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đã xác nhận hợp đồng cọc được hoàn tất bởi hồ sơ cứng. Hệ thống sẽ cập nhật trạng thái cho sản phẩm của bạn.`
  String get alertTitle_CompleteContractSuccess {
    return Intl.message(
      'Bạn đã xác nhận hợp đồng cọc được hoàn tất bởi hồ sơ cứng. Hệ thống sẽ cập nhật trạng thái cho sản phẩm của bạn.',
      name: 'alertTitle_CompleteContractSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận hoàn tất hợp đồng cọc`
  String get alertTitle_confirmCompleteContract {
    return Intl.message(
      'Xác nhận hoàn tất hợp đồng cọc',
      name: 'alertTitle_confirmCompleteContract',
      desc: '',
      args: [],
    );
  }

  /// `Bạn chưa có hợp đồng`
  String get contractDetail_youDoNotHaveContract {
    return Intl.message(
      'Bạn chưa có hợp đồng',
      name: 'contractDetail_youDoNotHaveContract',
      desc: '',
      args: [],
    );
  }

  /// `TỔNG QUAN`
  String get projectDetail_overview {
    return Intl.message(
      'TỔNG QUAN',
      name: 'projectDetail_overview',
      desc: '',
      args: [],
    );
  }

  /// `Chủ đầu tư`
  String get projectDetail_investor {
    return Intl.message(
      'Chủ đầu tư',
      name: 'projectDetail_investor',
      desc: '',
      args: [],
    );
  }

  /// `Quy mô dự án`
  String get projectDetail_projectArea {
    return Intl.message(
      'Quy mô dự án',
      name: 'projectDetail_projectArea',
      desc: '',
      args: [],
    );
  }

  /// `Loại hình`
  String get projectDetail_type {
    return Intl.message(
      'Loại hình',
      name: 'projectDetail_type',
      desc: '',
      args: [],
    );
  }

  /// `Diện tích xây dựng`
  String get projectDetail_constructionArea {
    return Intl.message(
      'Diện tích xây dựng',
      name: 'projectDetail_constructionArea',
      desc: '',
      args: [],
    );
  }

  /// `Số block`
  String get projectDetail_numberBlock {
    return Intl.message(
      'Số block',
      name: 'projectDetail_numberBlock',
      desc: '',
      args: [],
    );
  }

  /// `Số tầng`
  String get projectDetail_numberFloor {
    return Intl.message(
      'Số tầng',
      name: 'projectDetail_numberFloor',
      desc: '',
      args: [],
    );
  }

  /// `Số sản phẩm`
  String get projectDetail_numberProduct {
    return Intl.message(
      'Số sản phẩm',
      name: 'projectDetail_numberProduct',
      desc: '',
      args: [],
    );
  }

  /// `Hình thức sở hữu`
  String get projectDetail_ownership {
    return Intl.message(
      'Hình thức sở hữu',
      name: 'projectDetail_ownership',
      desc: '',
      args: [],
    );
  }

  /// `Tiến độ`
  String get projectDetail_progress {
    return Intl.message(
      'Tiến độ',
      name: 'projectDetail_progress',
      desc: '',
      args: [],
    );
  }

  /// `ƯU ĐIỂM NỔI BẬT`
  String get projectDetail_outstandingAdvantages {
    return Intl.message(
      'ƯU ĐIỂM NỔI BẬT',
      name: 'projectDetail_outstandingAdvantages',
      desc: '',
      args: [],
    );
  }

  /// `điểm cộng của`
  String get projectDetail_plusPointOf {
    return Intl.message(
      'điểm cộng của',
      name: 'projectDetail_plusPointOf',
      desc: '',
      args: [],
    );
  }

  /// `MẶT BẰNG ĐIỂN HÌNH`
  String get projectDetail_typicalGrounds {
    return Intl.message(
      'MẶT BẰNG ĐIỂN HÌNH',
      name: 'projectDetail_typicalGrounds',
      desc: '',
      args: [],
    );
  }

  /// `TIỆN ÍCH NGOẠI KHU`
  String get projectDetail_externalUtility {
    return Intl.message(
      'TIỆN ÍCH NGOẠI KHU',
      name: 'projectDetail_externalUtility',
      desc: '',
      args: [],
    );
  }

  /// `TIỆN ÍCH NỘI KHU`
  String get projectDetail_internalUtility {
    return Intl.message(
      'TIỆN ÍCH NỘI KHU',
      name: 'projectDetail_internalUtility',
      desc: '',
      args: [],
    );
  }

  /// `VỊ TRÍ DỰ ÁN`
  String get projectDetail_projectLocation {
    return Intl.message(
      'VỊ TRÍ DỰ ÁN',
      name: 'projectDetail_projectLocation',
      desc: '',
      args: [],
    );
  }

  /// `THÔNG TIN CHỦ ĐẦU TƯ`
  String get projectDetail_investorInfomation {
    return Intl.message(
      'THÔNG TIN CHỦ ĐẦU TƯ',
      name: 'projectDetail_investorInfomation',
      desc: '',
      args: [],
    );
  }

  /// `Xem chi tiết`
  String get projectDetail_seeDetail {
    return Intl.message(
      'Xem chi tiết',
      name: 'projectDetail_seeDetail',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký tư vấn`
  String get projectDetail_consultRegistration {
    return Intl.message(
      'Đăng ký tư vấn',
      name: 'projectDetail_consultRegistration',
      desc: '',
      args: [],
    );
  }

  /// `Gọi điện`
  String get projectDetail_call {
    return Intl.message(
      'Gọi điện',
      name: 'projectDetail_call',
      desc: '',
      args: [],
    );
  }

  /// `Dự án thuộc chủ đầu tư`
  String get investorDetail_ProjectBelongsToInvestor {
    return Intl.message(
      'Dự án thuộc chủ đầu tư',
      name: 'investorDetail_ProjectBelongsToInvestor',
      desc: '',
      args: [],
    );
  }

  /// `Chủ đầu tư khác`
  String get investorDetail_otherInvestors {
    return Intl.message(
      'Chủ đầu tư khác',
      name: 'investorDetail_otherInvestors',
      desc: '',
      args: [],
    );
  }

  /// `Giá từ`
  String get projectDetail_priceFrom {
    return Intl.message(
      'Giá từ',
      name: 'projectDetail_priceFrom',
      desc: '',
      args: [],
    );
  }

  /// `Giá từ`
  String get itemProject_priceFrom {
    return Intl.message(
      'Giá từ',
      name: 'itemProject_priceFrom',
      desc: '',
      args: [],
    );
  }

  /// `Dự án thuộc`
  String get listProjectOfInvestor_projectBelongs {
    return Intl.message(
      'Dự án thuộc',
      name: 'listProjectOfInvestor_projectBelongs',
      desc: '',
      args: [],
    );
  }

  /// `Chủ đầu tư`
  String get listInvestor_investor {
    return Intl.message(
      'Chủ đầu tư',
      name: 'listInvestor_investor',
      desc: '',
      args: [],
    );
  }

  /// `Chủ đầu tư của bạn`
  String get listInvestor_myInvestor {
    return Intl.message(
      'Chủ đầu tư của bạn',
      name: 'listInvestor_myInvestor',
      desc: '',
      args: [],
    );
  }

  /// `Chủ đầu tư khác`
  String get listInvestor_otherInvestor {
    return Intl.message(
      'Chủ đầu tư khác',
      name: 'listInvestor_otherInvestor',
      desc: '',
      args: [],
    );
  }

  /// `Email hoặc số điện thoại`
  String get signIn_emailOrPhone {
    return Intl.message(
      'Email hoặc số điện thoại',
      name: 'signIn_emailOrPhone',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu`
  String get signIn_password {
    return Intl.message(
      'Mật khẩu',
      name: 'signIn_password',
      desc: '',
      args: [],
    );
  }

  /// `Quên mật khẩu?`
  String get signIn_forgotPassword {
    return Intl.message(
      'Quên mật khẩu?',
      name: 'signIn_forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Chưa có tài khoản?`
  String get signIn_notAccount {
    return Intl.message(
      'Chưa có tài khoản?',
      name: 'signIn_notAccount',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký ngay!`
  String get signIn_signUpNow {
    return Intl.message(
      'Đăng ký ngay!',
      name: 'signIn_signUpNow',
      desc: '',
      args: [],
    );
  }

  /// `Đã có tài khoản?`
  String get signUp_accounted {
    return Intl.message(
      'Đã có tài khoản?',
      name: 'signUp_accounted',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập ngay!`
  String get signUp_signInNow {
    return Intl.message(
      'Đăng nhập ngay!',
      name: 'signUp_signInNow',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký tài khoản thành công`
  String get signUp_accountSuccess {
    return Intl.message(
      'Đăng ký tài khoản thành công',
      name: 'signUp_accountSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng cung cấp thông tin số điện thoại hoặc email đã đăng ký. \nNhập OTP để thiết lập mật khẩu mới`
  String get forgotPassword_title {
    return Intl.message(
      'Vui lòng cung cấp thông tin số điện thoại hoặc email đã đăng ký. \nNhập OTP để thiết lập mật khẩu mới',
      name: 'forgotPassword_title',
      desc: '',
      args: [],
    );
  }

  /// `Nhập số điện thoại hoặc email đã đăng ký`
  String get forgotPassword_inputPhone {
    return Intl.message(
      'Nhập số điện thoại hoặc email đã đăng ký',
      name: 'forgotPassword_inputPhone',
      desc: '',
      args: [],
    );
  }

  /// `Tạo lại mật khẩu`
  String get forgotPassword_createPassword {
    return Intl.message(
      'Tạo lại mật khẩu',
      name: 'forgotPassword_createPassword',
      desc: '',
      args: [],
    );
  }

  /// `QUÊN MẬT KHẨU`
  String get forgotPassword_titlePassword {
    return Intl.message(
      'QUÊN MẬT KHẨU',
      name: 'forgotPassword_titlePassword',
      desc: '',
      args: [],
    );
  }

  /// `TẠO MẬT KHẨU MỚI`
  String get createNewPassword_title {
    return Intl.message(
      'TẠO MẬT KHẨU MỚI',
      name: 'createNewPassword_title',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mật khẩu mới`
  String get creatNewPassword_passwordNew {
    return Intl.message(
      'Nhập mật khẩu mới',
      name: 'creatNewPassword_passwordNew',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mật lại khẩu mới`
  String get creatNewPassword_passwordRepeatNewPassword {
    return Intl.message(
      'Nhập mật lại khẩu mới',
      name: 'creatNewPassword_passwordRepeatNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Tạo mới mật khẩu`
  String get bttuon_createPassword {
    return Intl.message(
      'Tạo mới mật khẩu',
      name: 'bttuon_createPassword',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đã nhập sai quá \n 5 lần cho phép`
  String get alertMessage_overOtp {
    return Intl.message(
      'Bạn đã nhập sai quá \n 5 lần cho phép',
      name: 'alertMessage_overOtp',
      desc: '',
      args: [],
    );
  }

  /// `Không nhận được mã?`
  String get verifyOtp_notOtp {
    return Intl.message(
      'Không nhận được mã?',
      name: 'verifyOtp_notOtp',
      desc: '',
      args: [],
    );
  }

  /// `Gửi lại`
  String get verifyOtp_sendOtp {
    return Intl.message(
      'Gửi lại',
      name: 'verifyOtp_sendOtp',
      desc: '',
      args: [],
    );
  }

  /// `Mã OTP sẽ hết hiệu lực trong`
  String get verifuOtp_timeOtp {
    return Intl.message(
      'Mã OTP sẽ hết hiệu lực trong',
      name: 'verifuOtp_timeOtp',
      desc: '',
      args: [],
    );
  }

  /// `Mã OTP đã hết hiệu lực`
  String get verifyOtp_expiresOtp {
    return Intl.message(
      'Mã OTP đã hết hiệu lực',
      name: 'verifyOtp_expiresOtp',
      desc: '',
      args: [],
    );
  }

  /// `Nhận bàn giao`
  String get propertyDeliver_deliverd {
    return Intl.message(
      'Nhận bàn giao',
      name: 'propertyDeliver_deliverd',
      desc: '',
      args: [],
    );
  }

  /// `Check list nhận bàn giao sản phẩm`
  String get propertyDeliver_checkListToReceiveProductDelivery {
    return Intl.message(
      'Check list nhận bàn giao sản phẩm',
      name: 'propertyDeliver_checkListToReceiveProductDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng kiểm tra chi tiết bàn giao sản phẩm và thực hiện check list sau để hoàn tất quy trình nhận bàn giao sản phẩm`
  String get propertyDeliver_checkDescription {
    return Intl.message(
      'Vui lòng kiểm tra chi tiết bàn giao sản phẩm và thực hiện check list sau để hoàn tất quy trình nhận bàn giao sản phẩm',
      name: 'propertyDeliver_checkDescription',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra bàn giao`
  String get propertyDeliver_checkDeliver {
    return Intl.message(
      'Kiểm tra bàn giao',
      name: 'propertyDeliver_checkDeliver',
      desc: '',
      args: [],
    );
  }

  /// `Hài lòng`
  String get propertyDeliver_satisfied {
    return Intl.message(
      'Hài lòng',
      name: 'propertyDeliver_satisfied',
      desc: '',
      args: [],
    );
  }

  /// `Không hài lòng`
  String get propertyDeliver_unsatisfied {
    return Intl.message(
      'Không hài lòng',
      name: 'propertyDeliver_unsatisfied',
      desc: '',
      args: [],
    );
  }

  /// `Nhập lý do không hài lòng`
  String get propertyDeliver_reasonUnsatisfied {
    return Intl.message(
      'Nhập lý do không hài lòng',
      name: 'propertyDeliver_reasonUnsatisfied',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra lần`
  String get propertyDeliver_checkTimes {
    return Intl.message(
      'Kiểm tra lần',
      name: 'propertyDeliver_checkTimes',
      desc: '',
      args: [],
    );
  }

  /// `THÔNG TIN KIỂM TRA BÀN GIAO LẦN`
  String get propertyDeliver_deliverCheckTimesDetail {
    return Intl.message(
      'THÔNG TIN KIỂM TRA BÀN GIAO LẦN',
      name: 'propertyDeliver_deliverCheckTimesDetail',
      desc: '',
      args: [],
    );
  }

  /// `Hạng mục đạt`
  String get propertyDelivery_itemPass {
    return Intl.message(
      'Hạng mục đạt',
      name: 'propertyDelivery_itemPass',
      desc: '',
      args: [],
    );
  }

  /// `Hạng mục chưa đạt`
  String get propertyDelivery_itemFail {
    return Intl.message(
      'Hạng mục chưa đạt',
      name: 'propertyDelivery_itemFail',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận thông tin`
  String get button_confirmInformation {
    return Intl.message(
      'Xác nhận thông tin',
      name: 'button_confirmInformation',
      desc: '',
      args: [],
    );
  }

  /// `Không có hạng mục đạt`
  String get propertyDelivery_noItemPassed {
    return Intl.message(
      'Không có hạng mục đạt',
      name: 'propertyDelivery_noItemPassed',
      desc: '',
      args: [],
    );
  }

  /// `Không có hạng mục chưa đạt`
  String get propertyDelivery_noItemFailed {
    return Intl.message(
      'Không có hạng mục chưa đạt',
      name: 'propertyDelivery_noItemFailed',
      desc: '',
      args: [],
    );
  }

  /// `THÔNG TIN KIỂM TRA BÀN GIAO`
  String get propertyDeliver_deliverCheckDetail {
    return Intl.message(
      'THÔNG TIN KIỂM TRA BÀN GIAO',
      name: 'propertyDeliver_deliverCheckDetail',
      desc: '',
      args: [],
    );
  }

  /// `Sau khi kiểm tra bàn giao, hiện có:`
  String get propertyDeliver_afterCheckingDeliverThereAre {
    return Intl.message(
      'Sau khi kiểm tra bàn giao, hiện có:',
      name: 'propertyDeliver_afterCheckingDeliverThereAre',
      desc: '',
      args: [],
    );
  }

  /// `Nhận bàn giao`
  String get button_deliver {
    return Intl.message(
      'Nhận bàn giao',
      name: 'button_deliver',
      desc: '',
      args: [],
    );
  }

  /// `Bàn giao sau`
  String get button_deliverLater {
    return Intl.message(
      'Bàn giao sau',
      name: 'button_deliverLater',
      desc: '',
      args: [],
    );
  }

  /// `HOÀN TẤT KIỂM TRA BÀN GIAO`
  String get propertyDelivery_finishDeliver {
    return Intl.message(
      'HOÀN TẤT KIỂM TRA BÀN GIAO',
      name: 'propertyDelivery_finishDeliver',
      desc: '',
      args: [],
    );
  }

  /// `HOÀN TẤT KIỂM TRA BÀN GIAO LẦN`
  String get propertyDelivery_finishDeliverTimes {
    return Intl.message(
      'HOÀN TẤT KIỂM TRA BÀN GIAO LẦN',
      name: 'propertyDelivery_finishDeliverTimes',
      desc: '',
      args: [],
    );
  }

  /// `Tạm được`
  String get propertyDeliver_okey {
    return Intl.message(
      'Tạm được',
      name: 'propertyDeliver_okey',
      desc: '',
      args: [],
    );
  }

  /// `Tuyệt vời, hãy cho chúng tôi biết, bạn cảm nhận như thế nào khi nhận bàn giao sản phẩm nhé`
  String get propertyDeliver_acceptDeliverDescription {
    return Intl.message(
      'Tuyệt vời, hãy cho chúng tôi biết, bạn cảm nhận như thế nào khi nhận bàn giao sản phẩm nhé',
      name: 'propertyDeliver_acceptDeliverDescription',
      desc: '',
      args: [],
    );
  }

  /// `Chất lượng bàn giao`
  String get propertyDeliver_deliverQuality {
    return Intl.message(
      'Chất lượng bàn giao',
      name: 'propertyDeliver_deliverQuality',
      desc: '',
      args: [],
    );
  }

  /// `Nhân viên hỗ trợ bàn giao`
  String get propertyDeliver_supportStaffQuality {
    return Intl.message(
      'Nhân viên hỗ trợ bàn giao',
      name: 'propertyDeliver_supportStaffQuality',
      desc: '',
      args: [],
    );
  }

  /// `Đánh giá khác`
  String get propertyDeliver_otherReviews {
    return Intl.message(
      'Đánh giá khác',
      name: 'propertyDeliver_otherReviews',
      desc: '',
      args: [],
    );
  }

  /// `nếu có`
  String get propertyDeliver_ifHave {
    return Intl.message(
      'nếu có',
      name: 'propertyDeliver_ifHave',
      desc: '',
      args: [],
    );
  }

  /// `Nhập nội dung`
  String get propertyDeliver_importContent {
    return Intl.message(
      'Nhập nội dung',
      name: 'propertyDeliver_importContent',
      desc: '',
      args: [],
    );
  }

  /// `Thủ tục bàn giao sản phẩm hoàn tất`
  String get alertMessage_acceptDelivery {
    return Intl.message(
      'Thủ tục bàn giao sản phẩm hoàn tất',
      name: 'alertMessage_acceptDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận sản phẩm bàn giao sau`
  String get alertMessage_deliverLater {
    return Intl.message(
      'Xác nhận sản phẩm bàn giao sau',
      name: 'alertMessage_deliverLater',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận bàn giao sau`
  String get button_confirmDeliverLater {
    return Intl.message(
      'Xác nhận bàn giao sau',
      name: 'button_confirmDeliverLater',
      desc: '',
      args: [],
    );
  }

  /// `BÀN GIAO SAU`
  String get propertyDeliver_deliverLaterCaps {
    return Intl.message(
      'BÀN GIAO SAU',
      name: 'propertyDeliver_deliverLaterCaps',
      desc: '',
      args: [],
    );
  }

  /// `Các hạng mục chưa đạt cần xử lý để thực hiện`
  String
      get propertyDeliver_unsatisfactoryItemsNeedToBeProcessedForImplementation {
    return Intl.message(
      'Các hạng mục chưa đạt cần xử lý để thực hiện',
      name:
          'propertyDeliver_unsatisfactoryItemsNeedToBeProcessedForImplementation',
      desc: '',
      args: [],
    );
  }

  /// `bàn giao sau`
  String get propertyDeliver_deliver {
    return Intl.message(
      'bàn giao sau',
      name: 'propertyDeliver_deliver',
      desc: '',
      args: [],
    );
  }

  /// `Bạn cần thêm thông tin CMND/ CCCD trước khi xác thực tài khoản`
  String get requestVerifyAccount_noCCCDWarning {
    return Intl.message(
      'Bạn cần thêm thông tin CMND/ CCCD trước khi xác thực tài khoản',
      name: 'requestVerifyAccount_noCCCDWarning',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin tài khoản đã bị trùng`
  String get error_accountInfoDuplicated {
    return Intl.message(
      'Thông tin tài khoản đã bị trùng',
      name: 'error_accountInfoDuplicated',
      desc: '',
      args: [],
    );
  }

  /// `Nam`
  String get gender_male {
    return Intl.message(
      'Nam',
      name: 'gender_male',
      desc: '',
      args: [],
    );
  }

  /// `Nữ`
  String get gender_female {
    return Intl.message(
      'Nữ',
      name: 'gender_female',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin YCDCH`
  String get ycgcInfo_title {
    return Intl.message(
      'Thông tin YCDCH',
      name: 'ycgcInfo_title',
      desc: '',
      args: [],
    );
  }

  /// `Mã QR Check-in`
  String get checkin_my_qrcode {
    return Intl.message(
      'Mã QR Check-in',
      name: 'checkin_my_qrcode',
      desc: '',
      args: [],
    );
  }

  /// `Nhập câu hỏi`
  String get placeholder_enter_question {
    return Intl.message(
      'Nhập câu hỏi',
      name: 'placeholder_enter_question',
      desc: '',
      args: [],
    );
  }

  /// `Chọn câu hỏi`
  String get choose_questions {
    return Intl.message(
      'Chọn câu hỏi',
      name: 'choose_questions',
      desc: '',
      args: [],
    );
  }

  /// `EsaleKit`
  String get esalekit {
    return Intl.message(
      'EsaleKit',
      name: 'esalekit',
      desc: '',
      args: [],
    );
  }

  /// `Các gói vay`
  String get loan_option {
    return Intl.message(
      'Các gói vay',
      name: 'loan_option',
      desc: '',
      args: [],
    );
  }

  /// `Hotline`
  String get hotline {
    return Intl.message(
      'Hotline',
      name: 'hotline',
      desc: '',
      args: [],
    );
  }

  /// `Tư vấn`
  String get advise {
    return Intl.message(
      'Tư vấn',
      name: 'advise',
      desc: '',
      args: [],
    );
  }

  /// `Đánh giá chất lượng dịch vụ`
  String get service_quality_rating {
    return Intl.message(
      'Đánh giá chất lượng dịch vụ',
      name: 'service_quality_rating',
      desc: '',
      args: [],
    );
  }

  /// `Gói vay dự án`
  String get loan_for_project {
    return Intl.message(
      'Gói vay dự án',
      name: 'loan_for_project',
      desc: '',
      args: [],
    );
  }

  /// `Dự án áp dụng`
  String get apply_for_project {
    return Intl.message(
      'Dự án áp dụng',
      name: 'apply_for_project',
      desc: '',
      args: [],
    );
  }

  /// `Các gói vay của`
  String get loan_of {
    return Intl.message(
      'Các gói vay của',
      name: 'loan_of',
      desc: '',
      args: [],
    );
  }

  /// `Hiện không hỗ trợ khoản vay cho dự án này`
  String get no_loan_support {
    return Intl.message(
      'Hiện không hỗ trợ khoản vay cho dự án này',
      name: 'no_loan_support',
      desc: '',
      args: [],
    );
  }

  /// `Hiện không có ngân hàng hỗ trợ vay vốn`
  String get no_bank_support {
    return Intl.message(
      'Hiện không có ngân hàng hỗ trợ vay vốn',
      name: 'no_bank_support',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết gói vay mua nhà`
  String get detail_loan_home {
    return Intl.message(
      'Chi tiết gói vay mua nhà',
      name: 'detail_loan_home',
      desc: '',
      args: [],
    );
  }

  /// `Dự án tư vấn`
  String get advisory_for_project {
    return Intl.message(
      'Dự án tư vấn',
      name: 'advisory_for_project',
      desc: '',
      args: [],
    );
  }

  /// `Một lỗi đã xảy ra khi gửi yêu cầu tư vấn!`
  String get advisory_create_errorText {
    return Intl.message(
      'Một lỗi đã xảy ra khi gửi yêu cầu tư vấn!',
      name: 'advisory_create_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Chọn dự án`
  String get advisory_pickProject {
    return Intl.message(
      'Chọn dự án',
      name: 'advisory_pickProject',
      desc: '',
      args: [],
    );
  }

  /// `Họ và tên`
  String get request_fullname {
    return Intl.message(
      'Họ và tên',
      name: 'request_fullname',
      desc: '',
      args: [],
    );
  }

  /// `Điện thoại`
  String get request_phonenumber {
    return Intl.message(
      'Điện thoại',
      name: 'request_phonenumber',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng kí tư vấn`
  String get create_advisory_content {
    return Intl.message(
      'Nội dung đăng kí tư vấn',
      name: 'create_advisory_content',
      desc: '',
      args: [],
    );
  }

  /// `Nhập họ và tên`
  String get enter_fullname {
    return Intl.message(
      'Nhập họ và tên',
      name: 'enter_fullname',
      desc: '',
      args: [],
    );
  }

  /// `Nhập số điện thoại`
  String get enter_phonenumber {
    return Intl.message(
      'Nhập số điện thoại',
      name: 'enter_phonenumber',
      desc: '',
      args: [],
    );
  }

  /// `Nhập địa chỉ email`
  String get enter_email {
    return Intl.message(
      'Nhập địa chỉ email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Nhập nội dung đăng kí tư vấn`
  String get enter_advisory_content {
    return Intl.message(
      'Nhập nội dung đăng kí tư vấn',
      name: 'enter_advisory_content',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký tư vấn dự án đã được gửi đi. Tư vấn viên sẽ liên hệ với bạn.`
  String get send_advisory_success {
    return Intl.message(
      'Đăng ký tư vấn dự án đã được gửi đi. Tư vấn viên sẽ liên hệ với bạn.',
      name: 'send_advisory_success',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ email nhập chưa đúng`
  String get invalid_email_format {
    return Intl.message(
      'Địa chỉ email nhập chưa đúng',
      name: 'invalid_email_format',
      desc: '',
      args: [],
    );
  }

  /// `Dự án này chưa có tour 360`
  String get no_your_360 {
    return Intl.message(
      'Dự án này chưa có tour 360',
      name: 'no_your_360',
      desc: '',
      args: [],
    );
  }

  /// `Chủ đầu tư`
  String get investors {
    return Intl.message(
      'Chủ đầu tư',
      name: 'investors',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký đặt chỗ BBQ thành công. Vui lòng chờ trong giây lát, bộ phận quản lý toà nhà sẽ liên hệ để hỗ trợ dịch vụ cho bạn`
  String get booked_success {
    return Intl.message(
      'Đăng ký đặt chỗ BBQ thành công. Vui lòng chờ trong giây lát, bộ phận quản lý toà nhà sẽ liên hệ để hỗ trợ dịch vụ cho bạn',
      name: 'booked_success',
      desc: '',
      args: [],
    );
  }

  /// `Hỗ trợ thông tin thanh toán`
  String get supportPaymentInfo {
    return Intl.message(
      'Hỗ trợ thông tin thanh toán',
      name: 'supportPaymentInfo',
      desc: '',
      args: [],
    );
  }

  /// `Tư vấn thông tin dự án`
  String get adviseProjectInfo {
    return Intl.message(
      'Tư vấn thông tin dự án',
      name: 'adviseProjectInfo',
      desc: '',
      args: [],
    );
  }

  /// `Hướng dẫn booking sản phẩm`
  String get guideBookingProduct {
    return Intl.message(
      'Hướng dẫn booking sản phẩm',
      name: 'guideBookingProduct',
      desc: '',
      args: [],
    );
  }

  /// `Khác`
  String get other {
    return Intl.message(
      'Khác',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu 1`
  String get firstRequest {
    return Intl.message(
      'Yêu cầu 1',
      name: 'firstRequest',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu 2`
  String get secondRequest {
    return Intl.message(
      'Yêu cầu 2',
      name: 'secondRequest',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu quan tâm dự án`
  String get inquiryAboutTheProject {
    return Intl.message(
      'Yêu cầu quan tâm dự án',
      name: 'inquiryAboutTheProject',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu liên quan đến chuyển nhượng`
  String get requestRelatedToTransfer {
    return Intl.message(
      'Yêu cầu liên quan đến chuyển nhượng',
      name: 'requestRelatedToTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu cho các hoạt động cư dân : sửa chữa nhà cửa, đăng ký BBQ, sự cố tòa nhà..`
  String get requirementsForResidentActivities {
    return Intl.message(
      'Yêu cầu cho các hoạt động cư dân : sửa chữa nhà cửa, đăng ký BBQ, sự cố tòa nhà..',
      name: 'requirementsForResidentActivities',
      desc: '',
      args: [],
    );
  }

  /// `Vừa tạo`
  String get justCreated {
    return Intl.message(
      'Vừa tạo',
      name: 'justCreated',
      desc: '',
      args: [],
    );
  }

  /// `Đang xử lý`
  String get processing {
    return Intl.message(
      'Đang xử lý',
      name: 'processing',
      desc: '',
      args: [],
    );
  }

  /// `Hủy/ Trả về`
  String get cancelOrReturn {
    return Intl.message(
      'Hủy/ Trả về',
      name: 'cancelOrReturn',
      desc: '',
      args: [],
    );
  }

  /// `Đã xử lý`
  String get processed {
    return Intl.message(
      'Đã xử lý',
      name: 'processed',
      desc: '',
      args: [],
    );
  }

  /// `Xe 2 bánh`
  String get twoWheelsVehicle {
    return Intl.message(
      'Xe 2 bánh',
      name: 'twoWheelsVehicle',
      desc: '',
      args: [],
    );
  }

  /// `Xe 4 bánh`
  String get fourWheelsVehicle {
    return Intl.message(
      'Xe 4 bánh',
      name: 'fourWheelsVehicle',
      desc: '',
      args: [],
    );
  }

  /// `Vé tháng`
  String get monthlyTicket {
    return Intl.message(
      'Vé tháng',
      name: 'monthlyTicket',
      desc: '',
      args: [],
    );
  }

  /// `Vé năm`
  String get yearlyTicket {
    return Intl.message(
      'Vé năm',
      name: 'yearlyTicket',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đang tìm gì?`
  String get utilities_search_request {
    return Intl.message(
      'Bạn đang tìm gì?',
      name: 'utilities_search_request',
      desc: '',
      args: [],
    );
  }

  /// `Tìm nhanh tiện ích`
  String get utilities_search_banner {
    return Intl.message(
      'Tìm nhanh tiện ích',
      name: 'utilities_search_banner',
      desc: '',
      args: [],
    );
  }

  /// `Kết quả cho `
  String get utilities_search_keyword_result {
    return Intl.message(
      'Kết quả cho ',
      name: 'utilities_search_keyword_result',
      desc: '',
      args: [],
    );
  }

  /// `kết quả được tìm thấy`
  String get utilities_search_total_result {
    return Intl.message(
      'kết quả được tìm thấy',
      name: 'utilities_search_total_result',
      desc: '',
      args: [],
    );
  }

  /// `Lịch sử sử dụng`
  String get utilities_log_page_title {
    return Intl.message(
      'Lịch sử sử dụng',
      name: 'utilities_log_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Cửa hàng gần đây`
  String get utilities_shopping_nearYou {
    return Intl.message(
      'Cửa hàng gần đây',
      name: 'utilities_shopping_nearYou',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết cửa hàng`
  String get utilities_shopping_detail {
    return Intl.message(
      'Chi tiết cửa hàng',
      name: 'utilities_shopping_detail',
      desc: '',
      args: [],
    );
  }

  /// `Thương hiệu nổi bật`
  String get utilities_shopping_hotBrand {
    return Intl.message(
      'Thương hiệu nổi bật',
      name: 'utilities_shopping_hotBrand',
      desc: '',
      args: [],
    );
  }

  /// `Ngày đăng kí`
  String get bbq_reservation_registerDay {
    return Intl.message(
      'Ngày đăng kí',
      name: 'bbq_reservation_registerDay',
      desc: '',
      args: [],
    );
  }

  /// `Khu vực muốn sử dụng`
  String get bbq_reservation_wishedArea {
    return Intl.message(
      'Khu vực muốn sử dụng',
      name: 'bbq_reservation_wishedArea',
      desc: '',
      args: [],
    );
  }

  /// `Bạn cần chọn một khu vực`
  String get bbq_reservation_wishedArea_errorText {
    return Intl.message(
      'Bạn cần chọn một khu vực',
      name: 'bbq_reservation_wishedArea_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Sơ đồ`
  String get bbq_reservation_areaDiagram {
    return Intl.message(
      'Sơ đồ',
      name: 'bbq_reservation_areaDiagram',
      desc: '',
      args: [],
    );
  }

  /// `Trống`
  String get bbq_reservation_emptyArea {
    return Intl.message(
      'Trống',
      name: 'bbq_reservation_emptyArea',
      desc: '',
      args: [],
    );
  }

  /// `Của tôi`
  String get bbq_reservation_myArea {
    return Intl.message(
      'Của tôi',
      name: 'bbq_reservation_myArea',
      desc: '',
      args: [],
    );
  }

  /// `Đã đặt`
  String get bbq_reservation_occupiedArea {
    return Intl.message(
      'Đã đặt',
      name: 'bbq_reservation_occupiedArea',
      desc: '',
      args: [],
    );
  }

  /// `Đã duyệt`
  String get bbq_reservation_approved {
    return Intl.message(
      'Đã duyệt',
      name: 'bbq_reservation_approved',
      desc: '',
      args: [],
    );
  }

  /// `Mã khu vực`
  String get bbq_reservation_areaCode {
    return Intl.message(
      'Mã khu vực',
      name: 'bbq_reservation_areaCode',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập đầy đủ thông tin để đăng ký giữ chỗ khu vực tổ chức BBQ`
  String get bbq_reservation_registerNote {
    return Intl.message(
      'Vui lòng nhập đầy đủ thông tin để đăng ký giữ chỗ khu vực tổ chức BBQ',
      name: 'bbq_reservation_registerNote',
      desc: '',
      args: [],
    );
  }

  /// `Sơ đồ căn hộ`
  String get apartment_detail_diagram {
    return Intl.message(
      'Sơ đồ căn hộ',
      name: 'apartment_detail_diagram',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin chi tiết căn hộ`
  String get apartment_apartment_info {
    return Intl.message(
      'Thông tin chi tiết căn hộ',
      name: 'apartment_apartment_info',
      desc: '',
      args: [],
    );
  }

  /// `Chọn căn hộ của bạn`
  String get apartment_pick_apartment {
    return Intl.message(
      'Chọn căn hộ của bạn',
      name: 'apartment_pick_apartment',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin nhân khẩu`
  String get apartment_family_info {
    return Intl.message(
      'Thông tin nhân khẩu',
      name: 'apartment_family_info',
      desc: '',
      args: [],
    );
  }

  /// `Chưa có thông tin nhân khẩu`
  String get apartment_family_empty_info {
    return Intl.message(
      'Chưa có thông tin nhân khẩu',
      name: 'apartment_family_empty_info',
      desc: '',
      args: [],
    );
  }

  /// `Cư dân có nhu cầu in biểu mẫu đăng ký tạm trú tạm vắng vui lòng liên hệ với Ban Quản Lý để in biểu mẫu`
  String get apartment_family_note {
    return Intl.message(
      'Cư dân có nhu cầu in biểu mẫu đăng ký tạm trú tạm vắng vui lòng liên hệ với Ban Quản Lý để in biểu mẫu',
      name: 'apartment_family_note',
      desc: '',
      args: [],
    );
  }

  /// `Hủy đăng ký nhân khẩu`
  String get apartment_family_cancel_register_title {
    return Intl.message(
      'Hủy đăng ký nhân khẩu',
      name: 'apartment_family_cancel_register_title',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có chắc chắn muốn huỷ đăng ký Thông tin nhân khẩu `
  String get apartment_family_cancel_alert {
    return Intl.message(
      'Bạn có chắc chắn muốn huỷ đăng ký Thông tin nhân khẩu ',
      name: 'apartment_family_cancel_alert',
      desc: '',
      args: [],
    );
  }

  /// `Hủy thông tin đăng ký nhân khẩu thành công`
  String get apartment_family_cancel_success {
    return Intl.message(
      'Hủy thông tin đăng ký nhân khẩu thành công',
      name: 'apartment_family_cancel_success',
      desc: '',
      args: [],
    );
  }

  /// `Quan hệ với chủ hộ`
  String get apartment_family_relationship_withOwner {
    return Intl.message(
      'Quan hệ với chủ hộ',
      name: 'apartment_family_relationship_withOwner',
      desc: '',
      args: [],
    );
  }

  /// `Quan hệ nhân khẩu`
  String get apartment_family_relationship {
    return Intl.message(
      'Quan hệ nhân khẩu',
      name: 'apartment_family_relationship',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng chọn mối quan hệ của nhân khẩu mới với chủ hộ`
  String get apartment_family_add_relationship_note {
    return Intl.message(
      'Vui lòng chọn mối quan hệ của nhân khẩu mới với chủ hộ',
      name: 'apartment_family_add_relationship_note',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký nhân khẩu`
  String get apartment_family_register {
    return Intl.message(
      'Đăng ký nhân khẩu',
      name: 'apartment_family_register',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật đăng ký nhân khẩu`
  String get apartment_family_update {
    return Intl.message(
      'Cập nhật đăng ký nhân khẩu',
      name: 'apartment_family_update',
      desc: '',
      args: [],
    );
  }

  /// `Thêm mới nhân khẩu thành công`
  String get apartment_family_register_success {
    return Intl.message(
      'Thêm mới nhân khẩu thành công',
      name: 'apartment_family_register_success',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật thông tin nhân khẩu thành công`
  String get apartment_family_update_success {
    return Intl.message(
      'Cập nhật thông tin nhân khẩu thành công',
      name: 'apartment_family_update_success',
      desc: '',
      args: [],
    );
  }

  /// `Quản lý phương tiện`
  String get apartment_vehicle_info {
    return Intl.message(
      'Quản lý phương tiện',
      name: 'apartment_vehicle_info',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin phương tiện`
  String get apartment_vehicle_info1 {
    return Intl.message(
      'Thông tin phương tiện',
      name: 'apartment_vehicle_info1',
      desc: '',
      args: [],
    );
  }

  /// `Chưa có thông tin phương tiện`
  String get apartment_vehicle_empty_info {
    return Intl.message(
      'Chưa có thông tin phương tiện',
      name: 'apartment_vehicle_empty_info',
      desc: '',
      args: [],
    );
  }

  /// `Phương tiện đăng ký`
  String get apartment_registered_vehicle {
    return Intl.message(
      'Phương tiện đăng ký',
      name: 'apartment_registered_vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký phương tiện`
  String get apartment_vehicle_register {
    return Intl.message(
      'Đăng ký phương tiện',
      name: 'apartment_vehicle_register',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật đăng ký phương tiện`
  String get apartment_vehicle_update {
    return Intl.message(
      'Cập nhật đăng ký phương tiện',
      name: 'apartment_vehicle_update',
      desc: '',
      args: [],
    );
  }

  /// `Phương tiện đăng ký mới`
  String get apartment_vehicle_newRegister {
    return Intl.message(
      'Phương tiện đăng ký mới',
      name: 'apartment_vehicle_newRegister',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng chọn loại phương tiện muốn đăng ký`
  String get apartment_vehicle_register_note {
    return Intl.message(
      'Vui lòng chọn loại phương tiện muốn đăng ký',
      name: 'apartment_vehicle_register_note',
      desc: '',
      args: [],
    );
  }

  /// `Hủy đăng ký phương tiện`
  String get apartment_vehicle_cancel_register_title {
    return Intl.message(
      'Hủy đăng ký phương tiện',
      name: 'apartment_vehicle_cancel_register_title',
      desc: '',
      args: [],
    );
  }

  /// `Hủy đăng ký phương tiện thành công`
  String get apartment_vehicle_cancel_success {
    return Intl.message(
      'Hủy đăng ký phương tiện thành công',
      name: 'apartment_vehicle_cancel_success',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có chắc chắn muốn huỷ đăng ký phương tiện`
  String get apartment_vehicle_cancel_alert {
    return Intl.message(
      'Bạn có chắc chắn muốn huỷ đăng ký phương tiện',
      name: 'apartment_vehicle_cancel_alert',
      desc: '',
      args: [],
    );
  }

  /// `Loại xe`
  String get apartment_vehicle_type {
    return Intl.message(
      'Loại xe',
      name: 'apartment_vehicle_type',
      desc: '',
      args: [],
    );
  }

  /// `Nhãn hiệu`
  String get apartment_vehicle_label {
    return Intl.message(
      'Nhãn hiệu',
      name: 'apartment_vehicle_label',
      desc: '',
      args: [],
    );
  }

  /// `Nhập nhãn hiệu của xe`
  String get apartment_vehicle_label_hintText {
    return Intl.message(
      'Nhập nhãn hiệu của xe',
      name: 'apartment_vehicle_label_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập nhãn hiệu của xe`
  String get apartment_vehicle_label_errorText {
    return Intl.message(
      'Vui lòng nhập nhãn hiệu của xe',
      name: 'apartment_vehicle_label_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Dòng xe`
  String get apartment_vehicle_model {
    return Intl.message(
      'Dòng xe',
      name: 'apartment_vehicle_model',
      desc: '',
      args: [],
    );
  }

  /// `Nhập dòng của xe`
  String get apartment_vehicle_model_hintText {
    return Intl.message(
      'Nhập dòng của xe',
      name: 'apartment_vehicle_model_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập dòng của xe`
  String get apartment_vehicle_model_errorText {
    return Intl.message(
      'Vui lòng nhập dòng của xe',
      name: 'apartment_vehicle_model_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Màu sắc`
  String get apartment_vehicle_color {
    return Intl.message(
      'Màu sắc',
      name: 'apartment_vehicle_color',
      desc: '',
      args: [],
    );
  }

  /// `Nhập màu sắc của xe`
  String get apartment_vehicle_color_hintText {
    return Intl.message(
      'Nhập màu sắc của xe',
      name: 'apartment_vehicle_color_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập màu xe`
  String get apartment_vehicle_color_errorText {
    return Intl.message(
      'Vui lòng nhập màu xe',
      name: 'apartment_vehicle_color_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập đúng màu xe`
  String get apartment_vehicle_color_errorText1 {
    return Intl.message(
      'Vui lòng nhập đúng màu xe',
      name: 'apartment_vehicle_color_errorText1',
      desc: '',
      args: [],
    );
  }

  /// `Biển kiểm soát`
  String get apartment_vehicle_numberPlate {
    return Intl.message(
      'Biển kiểm soát',
      name: 'apartment_vehicle_numberPlate',
      desc: '',
      args: [],
    );
  }

  /// `Nhập biển kiểm soát của xe`
  String get apartment_vehicle_numberPlate_hintText {
    return Intl.message(
      'Nhập biển kiểm soát của xe',
      name: 'apartment_vehicle_numberPlate_hintText',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng nhập biển kiểm soát của xe`
  String get apartment_vehicle_numberPlate_errorText {
    return Intl.message(
      'Vui lòng nhập biển kiểm soát của xe',
      name: 'apartment_vehicle_numberPlate_errorText',
      desc: '',
      args: [],
    );
  }

  /// `Hình thức đăng ký`
  String get apartment_vehicle_registerMethod {
    return Intl.message(
      'Hình thức đăng ký',
      name: 'apartment_vehicle_registerMethod',
      desc: '',
      args: [],
    );
  }

  /// `Số thẻ/vé`
  String get apartment_vehicle_cardNumber {
    return Intl.message(
      'Số thẻ/vé',
      name: 'apartment_vehicle_cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Thời hạn`
  String get apartment_vehicle_expiredDate {
    return Intl.message(
      'Thời hạn',
      name: 'apartment_vehicle_expiredDate',
      desc: '',
      args: [],
    );
  }

  /// `Giấy tờ đăng ký`
  String get apartment_vehicle_registerDocument {
    return Intl.message(
      'Giấy tờ đăng ký',
      name: 'apartment_vehicle_registerDocument',
      desc: '',
      args: [],
    );
  }

  /// `Mặt trước cavet`
  String get apartment_vehicle_frontImage {
    return Intl.message(
      'Mặt trước cavet',
      name: 'apartment_vehicle_frontImage',
      desc: '',
      args: [],
    );
  }

  /// `Mặt sau cavet`
  String get apartment_vehicle_backImage {
    return Intl.message(
      'Mặt sau cavet',
      name: 'apartment_vehicle_backImage',
      desc: '',
      args: [],
    );
  }

  /// `Thêm mới phương tiện thành công`
  String get apartment_vehicle_register_success {
    return Intl.message(
      'Thêm mới phương tiện thành công',
      name: 'apartment_vehicle_register_success',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật thông tin phương tiện thành công`
  String get apartment_vehicle_update_success {
    return Intl.message(
      'Cập nhật thông tin phương tiện thành công',
      name: 'apartment_vehicle_update_success',
      desc: '',
      args: [],
    );
  }

  /// `Một lỗi đã xảy ra khi thực hiện yêu cầu này!`
  String get apartment_vehicle_snackText {
    return Intl.message(
      'Một lỗi đã xảy ra khi thực hiện yêu cầu này!',
      name: 'apartment_vehicle_snackText',
      desc: '',
      args: [],
    );
  }

  /// `Xe đạp`
  String get apartment_vehicle_bike {
    return Intl.message(
      'Xe đạp',
      name: 'apartment_vehicle_bike',
      desc: '',
      args: [],
    );
  }

  /// `Xe máy`
  String get apartment_vehicle_motorbike {
    return Intl.message(
      'Xe máy',
      name: 'apartment_vehicle_motorbike',
      desc: '',
      args: [],
    );
  }

  /// `Ô tô`
  String get apartment_vehicle_car {
    return Intl.message(
      'Ô tô',
      name: 'apartment_vehicle_car',
      desc: '',
      args: [],
    );
  }

  /// `Mã ưu đãi`
  String get promotion_code {
    return Intl.message(
      'Mã ưu đãi',
      name: 'promotion_code',
      desc: '',
      args: [],
    );
  }

  /// `Nhập mã ưu đãi`
  String get promotion_enterCode {
    return Intl.message(
      'Nhập mã ưu đãi',
      name: 'promotion_enterCode',
      desc: '',
      args: [],
    );
  }

  /// `Mã ưu đãi của tôi`
  String get promotion_myCode {
    return Intl.message(
      'Mã ưu đãi của tôi',
      name: 'promotion_myCode',
      desc: '',
      args: [],
    );
  }

  /// `Đợt`
  String get propertyStatus_fullPayments_step {
    return Intl.message(
      'Đợt',
      name: 'propertyStatus_fullPayments_step',
      desc: '',
      args: [],
    );
  }

  /// `Sau khi đặt cọc`
  String get transaction_history_paymentStatus_deposit {
    return Intl.message(
      'Sau khi đặt cọc',
      name: 'transaction_history_paymentStatus_deposit',
      desc: '',
      args: [],
    );
  }

  /// `Thanh toán đợt`
  String get transaction_history_payment_step {
    return Intl.message(
      'Thanh toán đợt',
      name: 'transaction_history_payment_step',
      desc: '',
      args: [],
    );
  }

  /// `Dung lượng tối đa ảnh là 5 MB`
  String get max_image_size {
    return Intl.message(
      'Dung lượng tối đa ảnh là 5 MB',
      name: 'max_image_size',
      desc: '',
      args: [],
    );
  }

  /// `Dung lượng tối đa file là 10 MB`
  String get max_file_size {
    return Intl.message(
      'Dung lượng tối đa file là 10 MB',
      name: 'max_file_size',
      desc: '',
      args: [],
    );
  }

  /// `Không thể tải lên ảnh có định dạng Gif`
  String get not_allow_upload_gif {
    return Intl.message(
      'Không thể tải lên ảnh có định dạng Gif',
      name: 'not_allow_upload_gif',
      desc: '',
      args: [],
    );
  }

  /// `Không thể mở`
  String get could_not_launch {
    return Intl.message(
      'Không thể mở',
      name: 'could_not_launch',
      desc: '',
      args: [],
    );
  }

  /// `Không thể kết nối đến số điện thoại `
  String get could_not_launch_phone {
    return Intl.message(
      'Không thể kết nối đến số điện thoại ',
      name: 'could_not_launch_phone',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết hóa đơn`
  String get invoice_detail {
    return Intl.message(
      'Chi tiết hóa đơn',
      name: 'invoice_detail',
      desc: '',
      args: [],
    );
  }

  /// `Số tiền thanh toán`
  String get invoice_payment_total {
    return Intl.message(
      'Số tiền thanh toán',
      name: 'invoice_payment_total',
      desc: '',
      args: [],
    );
  }

  /// `Mã hóa đơn`
  String get invoice_code {
    return Intl.message(
      'Mã hóa đơn',
      name: 'invoice_code',
      desc: '',
      args: [],
    );
  }

  /// `Tên hóa đơn`
  String get invoice_name {
    return Intl.message(
      'Tên hóa đơn',
      name: 'invoice_name',
      desc: '',
      args: [],
    );
  }

  /// `Ngày tạo`
  String get created_date {
    return Intl.message(
      'Ngày tạo',
      name: 'created_date',
      desc: '',
      args: [],
    );
  }

  /// `Chỉ số cũ`
  String get invoice_old_number {
    return Intl.message(
      'Chỉ số cũ',
      name: 'invoice_old_number',
      desc: '',
      args: [],
    );
  }

  /// `Chỉ số mới`
  String get invoice_last_number {
    return Intl.message(
      'Chỉ số mới',
      name: 'invoice_last_number',
      desc: '',
      args: [],
    );
  }

  /// `Số lượng tiêu thụ`
  String get invoice_total_used {
    return Intl.message(
      'Số lượng tiêu thụ',
      name: 'invoice_total_used',
      desc: '',
      args: [],
    );
  }

  /// `Đơn giá`
  String get invoice_unit_price {
    return Intl.message(
      'Đơn giá',
      name: 'invoice_unit_price',
      desc: '',
      args: [],
    );
  }

  /// `Thành tiền`
  String get payment_total {
    return Intl.message(
      'Thành tiền',
      name: 'payment_total',
      desc: '',
      args: [],
    );
  }

  /// `chỉ số đầu`
  String get invoice_first_number {
    return Intl.message(
      'chỉ số đầu',
      name: 'invoice_first_number',
      desc: '',
      args: [],
    );
  }

  /// `chỉ số tiếp theo`
  String get invoice_next_number {
    return Intl.message(
      'chỉ số tiếp theo',
      name: 'invoice_next_number',
      desc: '',
      args: [],
    );
  }

  /// `Hạn thanh toán`
  String get invoice_payment_due_date {
    return Intl.message(
      'Hạn thanh toán',
      name: 'invoice_payment_due_date',
      desc: '',
      args: [],
    );
  }

  /// `Comming soon..`
  String get comming_soon {
    return Intl.message(
      'Comming soon..',
      name: 'comming_soon',
      desc: '',
      args: [],
    );
  }

  /// `Lúc`
  String get invoice_payment_date {
    return Intl.message(
      'Lúc',
      name: 'invoice_payment_date',
      desc: '',
      args: [],
    );
  }

  /// `Tên đăng nhập`
  String get signIn_Username {
    return Intl.message(
      'Tên đăng nhập',
      name: 'signIn_Username',
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
