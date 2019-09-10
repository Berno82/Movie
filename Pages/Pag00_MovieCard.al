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
                  CaptionML = ENU = 'No.',
                                DAN = 'Nr.';  
                }
                field(Title;Title)
                {
                    CaptionML = ENU = 'Title',
                                DAN = 'Titel';

                }
                field(Genre;Genre)
                {
                    CaptionML = ENU = 'Genre',
                                DAN = 'Genre';
                }
            }
            group(Type)
            {
                CaptionML = ENU = 'Type',
                            DAN = 'Type';
                field(Media;Media)
                {
                    CaptionML = ENU = 'Media',
                                DAN = 'Medie';
                }
                field("Media Type";"Media Type")
                {
                    CaptionML = ENU = 'Media type',
                                DAN = 'Medie type';
                }
            }
            group(Ratings)
            {
                field("Average Rating";"Average Rating")
                {
                    CaptionML = ENU = 'Average rating',
                                DAN = 'Gennemsnitsvurdering';
                }
                field(Rating;Rating)
                {
                    CaptionML = ENU = 'Rating',
                                DAN = 'Vurdering';
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