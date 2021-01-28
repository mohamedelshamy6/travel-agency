import 'dart:io';

void main() {
  String word;
  void choose() {
    print("Write Add if you want to add a trip");
    print("Write Edit if you want to edit a trip");
    print("Write Delete if you want to delete a trip");
    print("Write View if you want to see a trip");
    print("Write Search if you want to search for trip");
    print("Write Reserve if you want to reserve a trip");
    word = stdin.readLineSync();
  }

  void choose2() {
    if (word == "Add") {
      var i;
      String lc;
      var d;
      double p;
      int l;
      travelAgency_add t1 = travelAgency_add(i, lc, d, l, p);
      t1.add();
    }
    if (word == "Edit") {
      var i2;
      String lc2;
      var d2;
      double p2;
      int l2;
      travelAgency_add t2 = travelAgency_add(i2, lc2, d2, l2, p2);
      t2.edit();
    }
    if (word == "View") {
      var i3;
      String lc3;
      var d3;
      double p3;
      int l3;
      travelAgency_add t3 = travelAgency_add(i3, lc3, d3, l3, p3);
      t3.view();
    }

    if (word == "Search") {
      var i4;
      String lc4;
      var d4;
      double p4;
      int l4;
      travelAgency_add t4 = travelAgency_add(i4, lc4, d4, l4, p4);
      t4.add();
    }
  }

  void final1() {
    print("Anything else? (yes or no )");
    String word2 = stdin.readLineSync();
    if (word2 == "yes") {
      choose();
      choose2();
      final1();
    } else
      print("Thanks");
    word = stdin.readLineSync();
    choose2();
    final1();
  }

  //main{
  choose();
  choose2();
  final1();
  //}
}

class travelAgency_add {
  var id;
  String loc;
  var dt;
  int passlim;
  double pr;
  List trip = List();

  travelAgency_add(var id, String loc, var dt, int passlim, double pr) {
    this.id = id;
    this.loc = loc;
    this.dt = dt;
    this.passlim = passlim;
    this.pr = pr;
  }
  void add() {
    print("What id do you want? (letters and numbers)");
    var i = stdin.readLineSync();
    print("Which place do you want?");
    String lc = stdin.readLineSync();
    print("When do you want the trip?");
    var d = stdin.readLineSync();
    print("what price do you want for the trip?");
    double p = double.parse(stdin.readLineSync());
    print("The passenger limit is?");
    int l = int.parse(stdin.readLineSync());

    trip.add(new travelAgency_add(i, lc, d, l, p));
  }

  void edit() {
    print("Write the id of the trip you want to edit it");
    var i_d = stdin.readLineSync();
    if (i_d == id) ;
    print(
        "What do you want to change? (id , location , price , date , passenger limit) ");
    String w = stdin.readLineSync();
    switch (w) {
      case "id":
        print("What is the new id?");
        var id2 = stdin.readLineSync();
        id = id2;
        break;
      case "location":
        print("What is the new location?");
        String location2 = stdin.readLineSync();
        loc = location2;
        break;
      case "price":
        print("What is the new price?");
        double price2 = double.parse(stdin.readLineSync());
        pr = price2;
        break;
      case "date":
        print("What is the new date?");
        var date2 = stdin.readLineSync();
        dt = date2;
        break;
      case "passenger limit":
        print("What is the new passenger limit?");
        int passengerlimit2 = int.parse(stdin.readLineSync());
        passlim = passengerlimit2;
        break;
      default:
        print("Error");
        break;
    }
  }

  void view() {
    List nums = [];
    nums.add(trip);
    print("What is the location of the trip?");
    var loc2 = stdin.readLineSync();
    if (loc2 == loc) print(nums);
  }

  void search() {
    List nums2 = [];
    nums2.add(trip);
    print("What is the price of the trip?");
    var price2 = stdin.readLineSync();
    if (price2 == pr) print(nums2);
  }
}

// Sorry .. i couldn't finish the project
