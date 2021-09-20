class User {
  String email = "";
  User(this.email);

  String print_user() {
    return email;
  }
}

mixin userMailSystem {
  String getMailSystem(String email) {
    if (email.split('@').length > 1) {
      return email.split('@')[1];
    }
    return '';
  }
}

class AdminUser extends User with userMailSystem {
  AdminUser(String email) : super(email);
  String print_user() {
    return getMailSystem(email);
  }
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

class UserManager<T extends User> {
  late Set<T> users = {};
  void addUser(T new_user) {
    users.add(new_user);
  }

  void removeUser(T new_user) {
    users.remove(new_user);
  }

  void print_users() {
    for (var x in users) {
      print(x.print_user());
    }
  }
}
