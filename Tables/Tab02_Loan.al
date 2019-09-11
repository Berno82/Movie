table 70102 Loan
{
    Caption = 'Loan';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"No."; Integer)
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(2; Loaner; Integer)
        {
            Caption = 'Loaner';
            DataClassification = ToBeClassified;
        }
        field(3;Movie;integer)
        {
            caption = 'Movie';
            DataClassification = ToBeClassified;
        }
        field(4; Active; Boolean)
        {
            Caption ='Active';
            DataClassification = ToBeClassified;
        }
        field(5; "Loan date"; Date)
        {
            Caption ='Loan date';
            DataClassification = ToBeClassified;
        }
        field(6; "Return date"; Date)
        {
            Caption = 'Return date';
            DataClassification = ToBeClassified;
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
        Active := TRUE;
        CheckDoubleBooking;
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
    local procedure CheckdoubleBooking()
    var
        Loan: Record Loan;
        Movie: Record Movie;
    begin
        Loan.setrange(Movie,rec.Movie);
        Loan.SetRange(Active,true);
        if Loan.IsEmpty then
            exit;
    end;
}