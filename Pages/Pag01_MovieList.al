page 70101 "Movie List"
{
    PageType = List;
    SourceTable = Movie;
    CaptionML = ENU = 'Movies',
                DAN = 'Film';
    //Editable = false;
    UsageCategory = Lists;
    CardPageId = 70100;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; "No.")
                {
                    
                }
                field(Title;Title)
                {

                }
                field(Genre;Genre)
                {

                }
                field(Media;Media)
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
            action("Create Movie")
            {
                trigger OnAction();
                var
                  Movie : Record Movie;  
                  Number : Integer;
                begin
                   if movie.FindLast then
                    Number += 1
                    else 
                    number := 1;

                   rec.Init;
                   rec."No." := number;  
                end;
            }
        }
    }
}