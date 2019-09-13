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
                    
                }
                field(Name; Name)
                {
                    
                }
                
                field(Initals;Initals)
                {

                }
            }
            group(Addresses)
            {
                CaptionML = ENU = 'Address',
                            DAN = 'Adresse';
                field(Address;Address)
                {
                    
                }
                field(Postcode;Postcode)
                {
                    trigger OnValidate();
                    begin
                        Validate(Country,Country);
                    end;
                }
                field(City;City)
                {
                   
                }
                field(Country;Country)
                {
                    trigger OnValidate();
                    begin
                        if Country <> 'DK' then 
                            IsVisible := true  
                        else
                            isvisible := false;                                
                        CurrPage.Update(true);
                    end;

                }
                field(County;County)
                    {
                        TableRelation = "Post Code"."Country/Region Code";
                        Visible = IsVisible;
                    }
                field(Look;IsVisible)
                {

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
    trigger OnOpenPage()
        begin
            isvisible := true;
        end;
        
    
    var
        IsVisible: Boolean;
}