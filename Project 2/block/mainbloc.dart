import 'dart:async';
import 'dart:math';
import 'package:demo_project/models/imagemodel.dart';
import 'package:demo_project/UI/userdata.dart';
import 'package:demo_project/localstorage/localstorage.dart';
import 'package:demo_project/models/loginmodel.dart';
import 'package:demo_project/models/logout.dart';
import 'package:demo_project/models/profilemodel.dart';
import 'package:demo_project/models/registermodel.dart';
import 'package:demo_project/server/ServerHelper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  RegisterModel registerModel = RegisterModel();
  LoginModel loginModel = LoginModel();
  UserList userList = UserList();
  ImageModel imageModel = ImageModel();
  LogoutModel logoutModel = LogoutModel();
  ProfileModel profileModel = ProfileModel();

  MainBloc() : super(MainState()) {
    on<DoSignUp>(doSignUp); // sign up
    on<DoLogin>(doLogin); // login
    on<DoUserList>(doUserList); // user login
    on<DoGetImages>(doGetImages);
    on<ViewProfile>(viewProfile);
  }
  Future<FutureOr<void>> viewProfile(
      ViewProfile event, Emitter<MainState> emit) async {
    try {
      ProfileModel profileModel = ProfileModel.fromJson(
          await ServerHelper.get('/test/user/profile/view?id=${event.id}'));
      if (profileModel.status!) {
        emit(ProfileFetchSuccess(profileModel));
      } else {
        emit(ProfileFetchFailed());
      }
    } catch (e) {
      emit(ProfileFetchFailed());
    }
  }

  Future<FutureOr<void>> doSignUp(
      DoSignUp event, Emitter<MainState> emit) async {
    try {
      emit(Registering());
      Map data = {
        "firstname": event.firstName,
        "lastname": event.lastName,
        "phoneNumber": event.phoneNumber,
        "password": event.password,
        "confirmPassword": event.password,
        "email": event.email,
      };
      RegisterModel registerModel = RegisterModel.fromJson(
          await ServerHelper.post('/test/user/register', data));
      if (registerModel.status!) {
        emit(RegisterSuccess());
      } else {
        emit(SignupFailed());
      }
    } catch (e) {
      emit(SignupFailed());
    }
  }

  Future<FutureOr<void>> doLogin(DoLogin event, Emitter<MainState> emit) async {
    try {
      Map data = {
        "phoneNumber": event.phoneNumber,
        "password": event.password,
      };
      LoginModel loginModel = LoginModel.fromJson(
          await ServerHelper.post('/test/user/login', data));
      if (loginModel.status!) {
        await LocalStorage.saveToken(loginModel.accessToken);
        await LocalStorage.saveUid(loginModel.id);
        emit(LoginSuccess());
      } else {
        emit(LoginFailed());
      }
    } catch (e) {
      emit(LoginFailed());
    }
  }

  Future<FutureOr<void>> doUserList(
      DoUserList event, Emitter<MainState> emit) async {
    try {
      UserList userList =
          UserList.fromJson(await ServerHelper.get('/test/users/list'));
      if (userList.status!) {
        emit(ListSuccess(userList));
      } else {
        emit(ListFailed());
      }
    } catch (e) {
      emit(ListFailed());
    }
  }
}

class ProfileFetchFailed extends MainState {}

class ProfileFetchSuccess extends MainState {
  final ProfileModel profileModel;
  ProfileFetchSuccess(this.profileModel);
}

Future<FutureOr<void>> doGetImages(
    DoGetImages event, Emitter<MainState> emit) async {
  try {
    ImageModel imageModel =
        ImageModel.fromJson(await ServerHelper.get('/story/page/get'));
    if (imageModel.status!) {
      emit(ImageLoadSucess(imageModel));
    } else {
      emit(ImageLoadFailed());
    }
  } catch (e) {
    emit(ImageLoadFailed());
  }
}

class ImageLoadFailed extends MainState {}

class ImageLoadSucess extends MainState {
  final ImageModel imageModel;
  ImageLoadSucess(this.imageModel);
}

// Define the events
class MainEvent {}

class DoSignUp extends MainEvent {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String password;
  final String confirmPassword;
  final String email;
  DoSignUp({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.password,
    required this.confirmPassword,
    required this.email,
  });
}

class ViewProfile extends MainEvent {
  final String? id;
  ViewProfile({required this.id});
}

class DoGetImages extends MainEvent {}

class DoLogin extends MainEvent {
  final String phoneNumber;
  final String password;
  DoLogin({required this.phoneNumber, required this.password});
}

class DoUserList extends MainEvent {}

// Define the states
class MainState {}

class MainInitial extends MainState {}

class Registering extends MainState {}

class RegisterSuccess extends MainState {}

class SignupFailed extends MainState {}

class LoginSuccess extends MainState {}

class LoginFailed extends MainState {}

class ListSuccess extends MainState {
  final UserList userList;
  ListSuccess(this.userList);
}

class ListFailed extends MainState {}
