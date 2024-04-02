class BankModel {
  bool? isActive;
  String? balance, eyeColor, name, gender, company, email, phone, address;
  int? age;

  BankModel({
    this.isActive,
    this.name,
    this.balance,
    this.eyeColor,
    this.gender,
    this.company,
    this.email,
    this.phone,
    this.address,
    this.age,
  });
  factory BankModel.frombanking({required Map Banking}) {
    return BankModel(
        address: Banking['address'],
        age: Banking['age'],
        balance: Banking['balance'],
        company: Banking['company'],
        email: Banking['email'],
        eyeColor: Banking['eyeColor'],
        gender: Banking['gender'],
        isActive: Banking['isActive'],
        name: Banking['name'],
        phone: Banking['phone']);
  }
}
