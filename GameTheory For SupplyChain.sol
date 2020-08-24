pragma solidity >=0.4.0 <0.6.0;
 


 import "./EscrowComplianceCecker.sol";
 import  "./Industry.sol";
 contract   GameTheory  {
          uint  i=0; 
      

      // PEOPLES 
       struct Entities {
       address participantaddress;
       bytes32  participantnames;
        bytes32    participantrole;
        uint participantcount;
       uint price;
       uint theentitiescount;
       address payable thepayingentityaddress;
       bytes32 RFIDS;
    
      mapping (address => Entities[1000]) thegreatentitylist;
      mapping (bytes32 => Entities[1000]) thegreatentityset;

       }
       
        Entities[] public theentitystore; 
        Entities entityobject;
       
        
           //BIDS
        struct Bids {
       bytes32  bidname;
       address bidderaddress;
       bytes32 biddername;
        bytes32 bidrole;
        uint bidcount;
        
    
      mapping (address => Bids[1000]) bidstores;
      mapping (bytes32 => Bids[1000]) thebidclaims;

       }
       
        Bids[] public bidscollection; 
        Bids BidObject;

               struct Strategies {
       address  strategiesaddress;
       bytes32  strategiesname;
       bytes32  stragiesdescription;
       bytes32 strategiesplayername;
       address strategiesplayeraddress;
      
       uint strategiescount;
        
    
    
      mapping (bytes32 => Strategies[1000]) strategieslist;
       mapping (address => Strategies[1000]) strategiesarray;
       }
       
        Strategies[] public strategiesconstruct; 
        Strategies StrategiesObject;
        
        
               struct Contract {
       address  contractaddress;
       bytes32  contracttypename;
       bytes32  contractdescription;
       uint contracttypecount;
       bytes32 contractplayername;
       address contractplayeraddress;
      
        
    
      mapping (address => Contract[1000]) contractlist;
      mapping (bytes32 => Contract[1000]) contractset;

       }
       
        Contract[] public contractlister; 
        Contract ContractObject;
        
        

         //OPTIMAL RETAILER  ORDER QUANTITY
 struct OptimalRetailOrder {
        address  retailorordereraddress;
       bytes32  retailerordername;
        bytes32   retailerorderrole;
       uint      optimalretailordervalue;
       uint          optimalretailorordercount;
       
      mapping (address => OptimalRetailOrder[1000]) optimalretailordercollection;
      mapping (bytes32 => OptimalRetailOrder[1000]) optimalretailorderstorage;

       }
 
        OptimalRetailOrder[] public orderretailcollection; 
        OptimalRetailOrder orderretailorObject;

           // OPTIMAL SUPPLIER ORDER QUANTITY
 struct OptimalSupplyOrder {
  address  supplyerordereraddress;
       bytes32  supplyordername;
        bytes32   supplyerorderrole;
       uint      optimalsupplyordervalue;
       uint          optimalsupplyordercount;
       
      mapping (address => OptimalSupplyOrder[1000]) optimalsupplyordercollection;
      mapping (bytes32 => OptimalSupplyOrder[1000]) optimalsupplyorderstorage;

       }
       
 

         OptimalSupplyOrder[] public forsupplyordercollection; 
        OptimalSupplyOrder forsupplyorderObject;

            // OPTIMAL TOTAL SUPPLY CHAIN ORDER QUANTITY

        struct OptimalTotalSupplyChainOrder {
       address  totalsupplyeraddress;
       bytes32  totalsupplyname;
        
       uint      optimaltotalsupplyvalue;
       uint          optimaltotalsupplycount;
       
      mapping (address => OptimalTotalSupplyChainOrder[1000]) optimaltotalsupplyordercollection;
      mapping (bytes32 => OptimalTotalSupplyChainOrder[1000]) optimaltotalsupplyorderstorage;

       }
       
 
  OptimalTotalSupplyChainOrder[] public ourtotalsupplyordercollection; 
        OptimalTotalSupplyChainOrder fortotalordersupplyObject;

          //OPTIMAL RETAILER PAYOFF
         struct OptimalRetailPayoffs {
       address  retailpayoffaddress;
       bytes32  retailpayoffname;
        bytes32   retailpayoffrole;
       uint      optimalretailpayoffvalue;
       uint          optimalretailpayoffcount;
       
      mapping (address => OptimalRetailPayoffs[1000]) optimalretailpayoffcollection;
      mapping (bytes32 => OptimalRetailPayoffs[1000]) optimalretailpayoffstorage;

       }
       
 
  OptimalRetailPayoffs[] public payforretailcollection; 
        OptimalRetailPayoffs payforretailObject;

        // SUPPLIER OPTIMAL PAYOFF

 struct OptimalSupplyPayoffs {
       address  supplyerpayoffaddress;
       bytes32  supplypayoffname;
        bytes32   supplyerpayoffrole;
       uint      optimalsupplypayoffvalue;
       uint          optimalsupplypayoffcount;
       
      mapping (address => OptimalSupplyPayoffs[1000]) optimalsupplypayoffcollection;
      mapping (bytes32 => OptimalSupplyPayoffs[1000]) optimalsupplypayoffstorage;

       }
       
 
  OptimalSupplyPayoffs[] public payforsupplycollection; 
        OptimalSupplyPayoffs payforsupplyObject;


               //OPTIMAL TOTAL SUPPLIER AND RETAILER PAYOFF FOR 

  struct OptimalTotalSupplyPayoffs {
       address  totalsupplypayoffaddress;
       bytes32  totalsupplypayoffname;
        bytes32   totalsupplypayoffstatus;
       uint      optimaltotalpayoffvalue;
       uint          optimaltotalpayoffcount;
       
      mapping (address => OptimalTotalSupplyPayoffs[1000]) optimaltotalsupplypayoffcollection;
      mapping (bytes32 => OptimalTotalSupplyPayoffs[1000]) optimaltotalsupplypayoffstorage;

       }
       
 
  OptimalTotalSupplyPayoffs[] public payfortotalsupplycollection; 
        OptimalTotalSupplyPayoffs payfortotalsupplyObject;




     function joinBiddingGroup(address  groupparticipantaddress,  bytes32 groupparticpantname, bytes32 groupparticipantrole,address bidaddress,  bytes32 bidname ) public  returns(address  bidparticipantaddress, bytes32 bidparticipantname, bytes32 bidparticipantrole, address theselectedbidaddress,bytes32 theselectedbidname )   {

     // WE PUSH INTO DATABASE AND THEN CALCULATE LEASTS
         i=0;
         
       BidObject.bidcount=0;
       i=  BidObject.bidcount;
      
       BidObject.bidderaddress;
              entityobject.thegreatentitylist[groupparticipantaddress][i].participantaddress =  groupparticipantaddress;
             
                   require( entityobject.thegreatentitylist[groupparticipantaddress][i].participantaddress  ==  groupparticipantaddress);
            
               entityobject.thegreatentitylist[groupparticipantaddress][i].participantaddress =groupparticipantaddress ;
                entityobject.thegreatentitylist[groupparticipantaddress][i].participantnames =groupparticpantname ;
               entityobject.thegreatentitylist[groupparticipantaddress][i].participantrole = groupparticipantrole;
              entityobject.thegreatentitylist[groupparticipantaddress][i].participantcount =BidObject.bidcount;
           
            BidObject.thebidclaims[bidname][i].bidname = bidname;
              BidObject.thebidclaims[bidname][i].bidcount =  BidObject.bidcount;
              BidObject.thebidclaims[bidname][i].bidderaddress =bidaddress ;
    
    
   
    
     bidparticipantaddress =groupparticipantaddress;
     bidparticipantname =groupparticpantname;
    bidparticipantrole = groupparticipantrole;
     theselectedbidaddress = bidaddress;
     theselectedbidname = bidname;
    i++;
       return ( bidparticipantaddress, bidparticipantname,     bidparticipantrole,theselectedbidaddress,theselectedbidname);
         
         
     }


   


   function chooseStrategies(address  playeraddress, bytes32 playername,  address strategiesaddresshere, bytes32 strategiesherename, bytes32 strategiesheretype) public returns(address strategiesgivenaddress, bytes32 playergivenname,  address playergivenaddress, bytes32 strategiesgivenname, bytes32 strategiesgiventype)   {
         i=0;
              
             StrategiesObject.strategiescount =0;
        i= StrategiesObject.strategiescount;



       

        
           StrategiesObject.strategiesarray[playeraddress][i].strategiesplayeraddress =  playeraddress;
           StrategiesObject.strategieslist[playername][i].strategiesplayername = playername;
           StrategiesObject.strategiesarray[playeraddress][i].strategiesaddress =  strategiesaddresshere;
             StrategiesObject.strategieslist[playername][i].strategiesname =  strategiesherename;
           StrategiesObject.strategieslist[playername][i].stragiesdescription = strategiesheretype;
          
             
                   require( StrategiesObject.strategiesarray[playeraddress][i].strategiesplayeraddress  ==  playeraddress);
             
         
             strategiesgivenaddress = StrategiesObject.strategiesarray[playeraddress][i].strategiesaddress;
             strategiesgivenname = StrategiesObject.strategieslist[playername][i].strategiesname;
             strategiesgiventype = StrategiesObject.strategieslist[playername][i].stragiesdescription;
            
             playergivenname= StrategiesObject.strategieslist[playername][i].strategiesplayername;
              playergivenaddress = StrategiesObject.strategiesarray[playeraddress][i].strategiesplayeraddress;

             

             
             i++;
             
         return (  strategiesgivenaddress, playergivenname,  playergivenaddress, strategiesgivenname, strategiesgiventype);
         
          
     }


   function chooseContractTypes(address contractchooseraddress, bytes32 contractchoosername, address contractchosenaddress, bytes32 contractchosenname, bytes32 contractchosentypehere) public returns(address thecontractchooseraddress, bytes32 thecontractchoosername, address thecontractchosenaddress, bytes32 thecontractchosenname)   {
         
         
      i=0;
              
            ContractObject.contracttypecount =0;
        i= ContractObject.contracttypecount;
        
        
       
        
           ContractObject.contractlist[contractchooseraddress][i].contractplayeraddress =  contractchooseraddress;
           ContractObject.contractset[contractchoosername][i].contractplayername = contractchoosername;
           ContractObject.contractlist[contractchooseraddress][i].contractaddress =  contractchosenaddress;
             ContractObject.contractset[contractchosenname][i].contracttypename =  contractchosentypehere;
          
          
             
                   require(  ContractObject.contractlist[contractchooseraddress][i].contractplayeraddress  ==  contractchooseraddress);
             
        
           thecontractchooseraddress =   ContractObject.contractlist[contractchooseraddress][i].contractplayeraddress;
          thecontractchoosername = ContractObject.contractlist[contractchooseraddress][i].contractplayername;
          thecontractchosenaddress =   ContractObject.contractlist[contractchooseraddress][i].contractaddress;
             thecontractchosenname = ContractObject.contractset[contractchosenname][i].contracttypename;
          
             

             
             
        i++;     
         return ( thecontractchooseraddress, thecontractchoosername,  thecontractchosenaddress,  thecontractchosenname);
         
          
     }
  

   function Negotiating(address negotiatoraddress, bytes32 negotiatename, bool negotiateornot )  public  returns(address negotiatoraddresshere, bytes32 negotiatorfullname, bool negotiatorstatus, bytes32 negotiatealert)   {
        
        bool negotiateset = true;
        
         negotiatoraddresshere = negotiatoraddress;
         negotiatorfullname = negotiatename;
        negotiatorstatus = negotiateornot;
        
            require(negotiateornot == negotiateset);
             
                  negotiatealert = "You are ready to negotiate";
                       negotiateornot = negotiateset;
         return ( negotiatoraddresshere, negotiatorfullname, negotiatorstatus, negotiatealert
           );
         
         
     }

  
   function calculate_OptimalSupplyQuantity(uint _orderpaidperunitcost,  uint _retlossofgoodwillcost , uint _supplylossofgoodwillcost,  uint _retperunitcost, uint _suppliersperunitcost) public returns(uint theorderpaidperunitcost, uint mysupplierperunitcost, uint lossofgoodwillcost, uint expectedorderhere)   {
        
 uint exRPT=0; uint totalgoodwillcost =0; uint totalcostperunitcost=0; 

                          theorderpaidperunitcost =_orderpaidperunitcost;
              mysupplierperunitcost =_suppliersperunitcost;
             lossofgoodwillcost =totalgoodwillcost;
             expectedorderhere=exRPT;

            totalgoodwillcost = _retlossofgoodwillcost + _supplylossofgoodwillcost;
          totalcostperunitcost =  _retperunitcost + _suppliersperunitcost;
          
           uint theexpectation  = _orderpaidperunitcost-_suppliersperunitcost; 
           exRPT =  theexpectation /_supplylossofgoodwillcost;
           
          
         return (
              _orderpaidperunitcost, _supplylossofgoodwillcost,totalgoodwillcost,exRPT );
         
         
     }
  


  
   
  
     
     // CALCULATE RETAILOR PROFIT
  
   function calculate_ExpectedRetailorProfit(uint _sellingprice, uint _salvagevalue, uint _retlossofgoodwillcost,uint supplierquantity, uint retperunitcost, uint retordersize, uint expectedDemand, uint expectedTransferpayment, uint retpaidorderperunit) public returns (uint expectedRetailprofit)   {

          _sellingprice =0;
          _salvagevalue =0;
          retpaidorderperunit =0;
          _retlossofgoodwillcost =0;
         supplierquantity =0;
          retperunitcost =0;
          retordersize =0;
          expectedDemand =0;
          expectedTransferpayment =0;
          
       
          
         expectedTransferpayment = retpaidorderperunit * retordersize;
         expectedRetailprofit= (_sellingprice - _salvagevalue * _retlossofgoodwillcost)*supplierquantity - (retperunitcost-_salvagevalue)*retordersize - expectedDemand - expectedTransferpayment;
         
             
         return ( expectedRetailprofit);
         }




              // CALCULATE EXPECTED SUPPLY PROFIT
  
   function calculate_ExpectedSupplyProfit(uint _supplylossofgoodwillcost, uint supplierquantity, uint suppliersperunitcost,uint retordersize,  uint expectedDemand, uint expectedTransferpayment,  uint retpaidorderperunit ) public  returns(uint theexpectedSupplyprofit)   {
         
        
           _supplylossofgoodwillcost = 0;
         supplierquantity =0;
          suppliersperunitcost =0;
          retordersize =0;
          expectedDemand =0;
          expectedTransferpayment =0;

             retpaidorderperunit =0;
              theexpectedSupplyprofit =0;
             expectedTransferpayment = retpaidorderperunit * retordersize;
          
           theexpectedSupplyprofit= _supplylossofgoodwillcost* supplierquantity -suppliersperunitcost* retordersize - _supplylossofgoodwillcost* expectedDemand + expectedTransferpayment;           

             
         return (theexpectedSupplyprofit);
         
         
     }

              // CALCULATE EXPECTED TOTAL EXPECTED PROFIT
     function calculateTotalExpectedProfit(uint _sellingprice, uint _salvagevalue, uint _retlossofgoodwillcost , uint _supplylossofgoodwillcost, uint supplierquantity, uint retperunitcost, uint suppliersperunitcost,  uint retordersize, uint expectedDemand  )
              
     public   returns (uint thefinalexTotalexpectedProfit)  { 
         
            
            _sellingprice =0;
            _salvagevalue =0;
           _supplylossofgoodwillcost =0;
           _retlossofgoodwillcost =0;
          
         supplierquantity=0;
           suppliersperunitcost =0;

           retordersize =0;
          expectedDemand =0;
       
              uint totalgoodwillcost=0;
                uint totalcostperunitcost =0;
                uint  exTotalexpectedProfit = 0;
            totalgoodwillcost = _retlossofgoodwillcost + _supplylossofgoodwillcost;
          
          totalcostperunitcost =  retperunitcost + suppliersperunitcost;

                  
          exTotalexpectedProfit =  ( _sellingprice - _salvagevalue + totalgoodwillcost) * supplierquantity;
        
          thefinalexTotalexpectedProfit= exTotalexpectedProfit - (totalcostperunitcost-_salvagevalue) * retordersize  - totalgoodwillcost * expectedDemand;          


         
             
         return (thefinalexTotalexpectedProfit);
 


     }


                   // CALCULATE SUPPLY OPTIMAL OREDERED QUANTITY
function calculate_supplyOptimalOrderquantity(  uint _retlossofgoodwillcost , uint _supplylossofgoodwillcost,  uint retperunitcost,uint suppliersperunitcost,  uint retailororderpaid ) public view returns(uint thesupplyoptimalquantitywegot)   {
        
                     uint totalgoodwillcost=0; uint totalcostperunitcost=0;  
              retailororderpaid =0;
        
           _supplylossofgoodwillcost=0;
        
          suppliersperunitcost=0;
           retperunitcost=0;
              retailororderpaid=0;
            totalgoodwillcost = _retlossofgoodwillcost + _supplylossofgoodwillcost;
          totalcostperunitcost =  retperunitcost + suppliersperunitcost;
        
           thesupplyoptimalquantitywegot =  (retailororderpaid - suppliersperunitcost)/ _supplylossofgoodwillcost;
             
         return ( thesupplyoptimalquantitywegot);
         
         
     }
     
       
              
              // CALCULATE RETAIL OPTIMAL ORDER QUANTITY
function calculate_retailOptimalOrderquantity(uint _sellingprice, uint _salvagevalue, uint _retlossofgoodwillcost ,uint _supplylossofgoodwillcost,  uint retperunitcost, uint suppliersperunitcost ,uint _orderpaidperunitcost)  public  returns(uint theretaileroptimalquantitywegot)   {
        
                   uint totalgoodwillcost=0; uint totalcostperunitcost=0;
                   uint orderofretailsalvaged =0; uint orderofsalvagedsellingprice =0; 
                   uint orderwithsellingprice=0;
                   
       
           theretaileroptimalquantitywegot =0; 
      
            totalgoodwillcost = _retlossofgoodwillcost + _supplylossofgoodwillcost;
          totalcostperunitcost =  retperunitcost + suppliersperunitcost;
            
            orderofretailsalvaged = (_orderpaidperunitcost + retperunitcost - _salvagevalue);
            orderwithsellingprice = orderofretailsalvaged / _sellingprice;
            orderofsalvagedsellingprice = orderwithsellingprice  - _salvagevalue;  
            
           theretaileroptimalquantitywegot = orderofsalvagedsellingprice  + _retlossofgoodwillcost;
             
            
         return ( theretaileroptimalquantitywegot);
         
         
     }


                      // CALCULATE OPTIMAL ORDER QUANTITY FOR WHOLE SUPPLY CHAIN

     function calculate_optimalOrderquantity(uint _sellingprice, uint _salvagevalue, uint _retlossofgoodwillcost ,uint _supplylossofgoodwillcost, uint retperunitcost, uint suppliersperunitcost) public  returns(uint therealoptimalorderquantitywegot)   {
        
                   uint totalgoodwillcost=0; uint totalcostperunitcost=0; uint getoverallsalvagevalue =0;
                    uint getoversalvagevalueandgoodwillcost =0; uint getthesellingpricehere =0;
        
           

         
         
therealoptimalorderquantitywegot =0;
         
            totalgoodwillcost = _retlossofgoodwillcost + _supplylossofgoodwillcost;
          totalcostperunitcost =  retperunitcost + suppliersperunitcost;
          
           getoverallsalvagevalue = ( totalcostperunitcost - _salvagevalue );
           
           getthesellingpricehere =getoverallsalvagevalue / _sellingprice;
           getoversalvagevalueandgoodwillcost =  getthesellingpricehere -  _salvagevalue;  
          
           therealoptimalorderquantitywegot =   getoversalvagevalueandgoodwillcost + totalgoodwillcost;
            
         return ( therealoptimalorderquantitywegot);
         
         
     }









}
