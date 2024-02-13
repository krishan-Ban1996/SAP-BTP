namespace demo;

entity Users
{
    key id : Integer;
    name : String(100);
    email: String(100);
    phone : String(100);
    gender: String(100);
       
}

entity Projects
{
    key id : Integer;
    name : String(100);
    description : String(100);
    
}

entity BusinessPartnerEntity{
    key id: Integer;
    createdAt: String;
    createdBy : String; 
    supplierName : String;
    supplierAddress : String;
    deliveryCustomerName : String;
    deliveryCustomerAddress : String;
}