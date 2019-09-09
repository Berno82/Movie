table 70100 Movie
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(5; "Title"; Text[50])
        {
            Caption = 'Title';
            DataClassification = CustomerContent;
            trigger OnValidate();
            var
                sure : Label 'Are you sure?';
                mustbenamed : Label 'Movie must be named';
                undo : Label 'No changes made';

            begin
                if(xrec.Title <> '') and(Rec.Title = '') then
                    error(mustbenamed);
                if xRec.Title <> Title then
                    if Confirm(Sure, false) then
                    Commit
                    else
                    error(undo);
            end;
        }
        field(6; "Genre"; Option)
        {
            OptionMembers = Comedy, Action, Thriller, Adventure, Drama, Horror, Animation;
            Caption = 'Genre';
            DataClassification = CustomerContent;
        }
        field(7; "Type"; Option)
        {
            Caption = 'Type';
            OptionMembers = Movie, Series;
            DataClassification = CustomerContent;
        }
        field(10; Media; Option)
        {
            Caption = 'Media';
            OptionMembers = CD, DVD, BD, HDD;
            DataClassification = CustomerContent;
        }
        field(11; "Media Type"; Blob)
        {
            Caption = 'Media Type';
            DataClassification = CustomerContent;
        }
        field(15; Rating; Integer)
        {
            Caption = 'Rating';
            DataClassification = CustomerContent;
        }
        field(16; "Average Rating"; Decimal)
        {
            Caption = 'Average Rating';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(No2; Title,Genre)
        {}
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}