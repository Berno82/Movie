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

            begin
                PhoneNumberValidation("Phone No.");
            end;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }
        field(4; Initals; Code[10])
        {
            Caption = 'Initials';
            DataClassification = ToBeClassified;
        }
        field(5; Postcode; Code[10])
        {
            caption = 'Postcode';
            DataClassification = ToBeClassified;
            trigger OnValidate();
            var
            
            begin
                postcodetab.ValidatePostCode(City,Postcode,County,Country,false);
            end;
        }
        field(6; City; Text[50])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
            trigger OnValidate();
            var

            begin
                PostcodeTab.ValidateCity(City,Postcode,County,Country,false)
            end;
        }
        field(7; Country; code[10])
        {
            Caption = 'Country';
            DataClassification = ToBeClassified;
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
        PostcodeTab : record "Post Code" ;
        County : text[30];


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