page 70100 "Movie Card"
{
    PageType = Card;
    SourceTable = Movie;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
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
    
    var
        myInt: Integer;
}