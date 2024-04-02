class BankMOdel
{
  var isActive,
      balance,
      age,
      eyeColor,
      name,
      gender,
      company,
      email,
      phone,
      address;

      BankMOdel({required this.isActive,
      required this.balance,
      required this.age,
      required this.eyeColor,
      required this.name,
      required this.gender,
      required this.company,
      required this.email,
      required this.phone,
      required this.address});

      factory BankMOdel.fromDetailsOfBank({required Map DetailsOfBank})
      {
        return BankMOdel(
        isActive: DetailsOfBank['isActive'], 
        balance: DetailsOfBank['balance'], 
        age: DetailsOfBank['age'], 
        eyeColor: DetailsOfBank['eyeColor'], 
        name: DetailsOfBank['name'],
        gender: DetailsOfBank['gender'],
        company: DetailsOfBank['company'],
        email: DetailsOfBank['email'],
        phone: DetailsOfBank['phone'],
        address: DetailsOfBank['address']);
      }
     

      

}