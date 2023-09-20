class UserData{
  String? name;
  String? password;
  String? nickname;
  int? age;
  bool? genderB;
  String? lastlogin;



  UserData({
    this.name,
     this.password,
     this.nickname,
     this.age ,
     this.genderB,
      this.lastlogin
      });

      @override
      String toString(){
        return 
        """
        User name:${name},
        User name:${password},
        nickname :${nickname},
        User age:${age},
        Biologic register:${genderB},
        last login:${lastlogin},
        """;
      }
  
}
