part of 'user_profile_cubit.dart';

extension UserProfileStateX on UserProfileState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class UserProfileState {
  final GenericStateStatus status;
  final String? errorMsg;
  final UserProfileData? userProfileData;

  const UserProfileState(
      {required this.status, this.userProfileData, this.errorMsg,});

  UserProfileState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    UserProfileData? userProfileData,
  }) {
    return UserProfileState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      userProfileData: userProfileData ?? this.userProfileData,
    );
  }

  @override
  String toString() {
    return 'UserProfileState('
        'status: $status, '
        'errorMsg: $errorMsg, '
        'userProfileData: $userProfileData, '
        ')';
  }
}
