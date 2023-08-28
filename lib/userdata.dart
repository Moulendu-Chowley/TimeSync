class User{
  String email,password;
  User(this.email,this.password);
  User.fromJson(Map<String,dynamic>json):email =json['email'],
        password=json['password'];
  Map<String,dynamic>toJson()=>{
    'email':email,
    'password':password
  };
}