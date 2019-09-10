page 70103 "Friend Card"
{
    PageType = Card;
    SourceTable = Friend;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                CaptionML = ENU = 'General',
                            DAN = 'Generelt';
                field("Phone No.";"Phone No.")
                {
                    CaptionML = ENU = 'Phone No.',
                                DAN = 'Telefon nr.';
                }
                field(Name; Name)
                {
                    Captionml = ENU = 'Name',
                                DAN = 'Navn';
                }
                
                field(Initals;Initals)
                {
CaptionML = ENU = 'Initials',
            DAN = 'Initialer';
                }
            }
            group(Addresses)
            {
                CaptionML = ENU = 'Address',
                            DAN = 'Adresse';
                field(Address;Address)
                {
                    CaptionML = ENU = 'Address',
                                DAN = 'Adresse';
                }
                field(City;City)
                {
                    CaptionML = ENU = 'City',
                                DAN = 'By';
                }
                field(Country;Country)
                {
                    CaptionML = ENU = 'Country',
                                DAN = 'Land';
                }
            }
        }
    }
    
    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}