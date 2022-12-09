import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/model/entity/response/login_response.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';
import 'package:flutter_base/model/repository/profile_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:equatable/equatable.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileRepository profileRepository;
  AuthRepository authRepository;
  ProfileCubit({required this.profileRepository, required this.authRepository})
      : super(ProfileState());

  void choosePicture(ImageSource source) async {
    final picker = ImagePicker();
    emit(state.copyWith(changeAvatarStatus: ChangeAvatarStatus.loading));
    try {
      final XFile? image = await picker.pickImage(source: source);

      if (image != null) {
        final croppedFile = await ImageCropper().cropImage(
          sourcePath: image.path,
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.original,
          ],
          uiSettings: [
            AndroidUiSettings(
                toolbarTitle: 'Ảnh đại diện',
                toolbarColor: AppColors.white,
                initAspectRatio: CropAspectRatioPreset.original,
                showCropGrid: false,
                backgroundColor: AppColors.grey86,
                hideBottomControls: true,
                lockAspectRatio: false),
            IOSUiSettings(
              title: 'Ảnh đại diện',
            ),
          ],
        );
        if (croppedFile != null) {
          changeAvatar(croppedFile.path);
        } else {
          emit(state.copyWith(changeAvatarStatus: ChangeAvatarStatus.cancel));
        }
      } else {
        emit(state.copyWith(changeAvatarStatus: ChangeAvatarStatus.cancel));
      }
    } on PlatformException catch (e) {
      final status = source == ImageSource.camera
          ? await Permission.camera.status
          : await Permission.mediaLibrary.status;
      if (status != PermissionStatus.granted)
        emit(state.copyWith(
            changeAvatarStatus: ChangeAvatarStatus.permissionDenied,
            errorMessage: source == ImageSource.camera
                ? 'Bạn đã từ chối quyền truy cập máy ảnh'
                : 'Bạn đã từ chối quyền truy cập thư viện ảnh'));
    }
  }

  void changeAvatar(String filePath) async {
    emit(state.copyWith(changeAvatarStatus: ChangeAvatarStatus.loading));
    File imageFile = File(filePath);
    final imageBytes = await imageFile.readAsBytes();
    String base64Image = "data:image/png;base64," + base64Encode(imageBytes);

    try {
      emit(state.copyWith(
          changeAvatarStatus: ChangeAvatarStatus.success,
          base64avatar: base64Image,
          user: state.user?.copyWith()));
    } catch (e) {
      print(e);
      emit(state.copyWith(
          changeAvatarStatus: ChangeAvatarStatus.failure,
          errorMessage: e.toString()));
    }
  }

  void init(Response user) {
    emit(state.copyWith());
  }

  void isFirstTimeIssue(bool? isFirstTimeIssue) {
    emit(state.copyWith(isFirstTimeIssue: isFirstTimeIssue));
  }

  void logout() async {
    emit(state.copyWith(logoutRequestStatus: LoadStatus.LOADING));
    try {
      emit(state.copyWith(logoutRequestStatus: LoadStatus.SUCCESS));
    } catch (e) {
      emit(state.copyWith(logoutRequestStatus: LoadStatus.FAILURE));
    }
  }
}
