table 70101 Friend
{
    caption = 'Friend';
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Phone No."; Code[20])
        {
            Caption = 'Phone No.';
            DataClassification = ToBeClassified;
            trigger OnValidate();
            var
                myInt: Integer;
            begin

            end;
        }

    }

    keys
    {
        key(PK; "phone No.")
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

    local procedure PhoneNumberValidation("No.": Code[20]) answer: Boolean
    var
        ErrorCountryCode: Label 'Error in phonenumber \apply country code or\ supply a danish phonenumber';
        ErrorNotDanish: Label 'Not a Danish number \ correct country code';
        NumberInt: Integer;
        NumberText: Text[20];
    begin
        if not(CopyStr("No.", 1, 1) = '+') then
            if strlen("no.") <> 8 then
                error(ErrorNotDanish);
        if(CopyStr("No.", 1, 3) = '+45') then begin
            NumberText := CopyStr("No.", 4);
            if Evaluate(NumberInt, NumberText) then begin
                if(StrLen(NumberText) <> 8) then
                    error(ErrorNotDanish)
            end else
                error(ErrorCountryCode);

        end;


    end;
}