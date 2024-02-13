using {demo} from '../db/schema';

service ProjectService 
{
entity Users1 as projection on demo.Users where gender = 'female';
entity Users2 as projection on demo.Users where gender = 'male' and id > 2000;
entity Projects as projection on  demo.Projects where id > 2;
}

service BusinessPartnerService
 {

    entity Suppliers as projection on demo.BusinessPartnerEntity 
                            excluding {
                                createdAt, 
                                createdBy, 
                                deliveryCustomerName,
                                deliveryCustomerAddress                          
                            };
                           
    
 


    entity Customers as projection on demo.BusinessPartnerEntity{
                                id as companyId,
                                deliveryCustomerName as companyName,
                                deliveryCustomerAddress as companyHeadquarters                                 
                            };

}
