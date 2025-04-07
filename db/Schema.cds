namespace cap.db;
using { enu } from './enu';

type Price{
  amount: Integer;
  value: Integer;
}
entity Users{
        key id: Integer;
        Name: String(100);
        email: String(100);
        enu: enu.status;
        project: Association to Projects;
    }

    entity Projects{
        key id: Integer;
        Name : String(100);
        Description:String(1000);
        user: Association to many Users on user.project = $self;
    }
    entity Employees {
  key ID : Integer;
  //addresses : Association to many Addresses on addresses.owner = $self;
}
entity Addresses {
  owner : Association to Employees;  //> the backlink
  price:Price;
}