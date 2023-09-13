class OldBookModelClass {
  String? oldPlace;
  String? oldEditation;
  String? oldAuthorName;
  String? oldName;
  String? oldOldNewPrice;
  String? oldOldprice;
  String? delivery;

  OldBookModelClass(
      {this.oldPlace,
        this.oldEditation,
        this.oldAuthorName,
        this.oldName,
        this.oldOldNewPrice,
        this.oldOldprice,
        this.delivery});

  OldBookModelClass.fromJson(Map<String, dynamic> json) {
    oldPlace = json['oldPlace']  ?? '';
    oldEditation = json['oldEditation'] ?? '';
    oldAuthorName = json['oldAuthorName'] ?? '';
    oldName = json['oldName'] ?? '';
    oldOldNewPrice = json['oldOldNewPrice'] ?? '';
    oldOldprice = json['oldOldprice'] ?? '';
    delivery = json['Delivery'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['oldPlace'] = this.oldPlace;
    data['oldEditation'] = this.oldEditation;
    data['oldAuthorName'] = this.oldAuthorName;
    data['oldName'] = this.oldName;
    data['oldOldNewPrice'] = this.oldOldNewPrice;
    data['oldOldprice'] = this.oldOldprice;
    data['Delivery'] = this.delivery;
    return data;
  }
}
