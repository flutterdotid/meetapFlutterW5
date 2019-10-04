class Sallary {
  String id_sallary;
  String nik;
  String nama;
  String periode;
  int basic_sallary;
  int attendance;
  int overtime;
  int income;
  int tax;
  int loan;
  int deductions;
  int net_income;

  Sallary({
    this.id_sallary, this.nik, this.nama, this.periode, 
    this.basic_sallary, this.attendance, this.overtime, this.income, this.tax, this.loan, this.deductions, this.net_income
  });

  factory Sallary.fromJson(Map<String, dynamic>json){
    return new Sallary(
      id_sallary: json['id_sallary'],
      nik: json['nik'],
      nama: json['nama'],
      periode: json['periode'],
      basic_sallary: json['basic_sallary'],
      attendance: json['attendance'],
      overtime: json['overtime'],
      income: json['income'],
      tax: json['tax'],
      loan: json['loan'],
      deductions: json['deductions'],
      net_income: json['net_income']
    );
  }

}