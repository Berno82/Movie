page 70102 "Friend list"
{
    PageType = List;
    SourceTable = Friend;
    CaptionML = ENU = 'Friends',
                DAN = 'Venner';
    UsageCategory = Lists;
    CardPageId = "Friend Card";
   
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Name)
                {
                    
                }
                field("Phone No.";"Phone No.")
                {

                }
                field(Initals;Initals)
                {

                }
                field(Address;Address)
                {

                }
                field(City;City)
                {

                }
            }
        }
        area(factboxes)
        {
            
        }
    }
    
    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }
}