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
                field("No.";"No.")
                {
                    
                }
                field(Title;Title)
                {

                }
                field(Genre;Genre)
                {

                }
            }
            group(Type)
            {
                field(Media;Media)
                {
                    
                }
                field("Media Type";"Media Type")
                {

                }
            }
            group(Ratings)
            {
                field("Average Rating";"Average Rating")
                {

                }
                field(Rating;Rating)
                {}
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