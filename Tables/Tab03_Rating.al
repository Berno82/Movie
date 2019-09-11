table 70103 "Movie Rating"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;Loaner; Integer)
        {
            CaptionML = ENU = 'Loaner',
                        DAN = 'Låner';
            TableRelation = Friend."Phone No.";
            DataClassification = ToBeClassified;
        }
        field(2;Movie;Integer)
        {
            CaptionML = ENU = 'Movie',
                        DAN = 'Film';
            TableRelation = Movie."No.";

        }
        field(3;Rating;Decimal)
        {
            CaptionML = ENU = 'Rating',
                        DAN = 'Karater';
            DecimalPlaces = 2:2;
        }
    }
    
    keys
    {
        key(PK; Loaner)
        {
            Clustered = true;
        }
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