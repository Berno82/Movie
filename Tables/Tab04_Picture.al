table 70104 Picture
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"No."; Integer)
        {
            
            DataClassification = ToBeClassified;
        }
        field(2;CD;Blob)
        {
            CaptionML = ENU = 'CD',
                        DAN = 'CD';
        }
        field(3;DVD;Blob)
        {
            CaptionML = ENU = 'DVD',
                        DAN = 'DVD';
        }
        field(4;BluRay;Blob)
        {
            CaptionML = ENU = 'BluRay',
                        DAN = 'BluRay';
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