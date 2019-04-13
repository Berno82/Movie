table 70100 Movie
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;"No."; Code[10])
        {
            Caption='No.';
            DataClassification = CustomerContent;
        }
        field(5; "Title"; Text[50])
        {
            Caption='Title';
            DataClassification = CustomerContent;
        }
        field(6; "Genre"; Option)
        {
            OptionMembers=Comedy,Action,Thriller,Adventure,Drama,Horror,Animation;
            Caption = 'Genre';
            DataClassification = CustomerContent;
        }
    }
    
    keys
    {
        key(PK; "No.")
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