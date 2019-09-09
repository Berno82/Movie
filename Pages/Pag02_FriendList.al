page 70102 "Friendslist"
{
    PageType = List;
    SourceTable = Friend;
    caption = 'Friendslist';
    UsageCategory = Lists;
   
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