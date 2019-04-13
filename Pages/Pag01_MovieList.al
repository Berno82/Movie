page 70101 "Movie List"
{
    PageType = List;
    SourceTable = Movie;
    Caption = 'Movie List';
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
                  Number : Code[10];
                begin
                   if movie.FindLast then
                    Number += movie."No."
                    else 
                    number := 1;

                   rec.Init;
                   rec."No." := number;  
                end;
            }
        }
    }
}