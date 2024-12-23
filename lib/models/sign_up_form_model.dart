class SignUpFormModel {
  String? name;
  String? email;
  String? password;
  String? ktp;
  String? pin;
  String? profilePicture;

  SignUpFormModel({
    this.name,
    this.email,
    this.password,
    this.ktp,
    this.pin,
    this.profilePicture,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'ktp': ktp,
      'pin': pin,
      'profile_picture': profilePicture,
    };
  }

SignUpFormModel copyWith({
    String? ktp,
    String? pin,
    String? profilePicture,
  }) {
    return SignUpFormModel(
      name: name,
      email: email,
      password: password,
      ktp: ktp ?? this.ktp,
      pin: pin ?? this.pin,
      profilePicture: profilePicture ?? this.profilePicture,
    );

}
}