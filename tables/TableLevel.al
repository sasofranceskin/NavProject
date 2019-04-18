table 50100
 Level
{
    DataClassification = ToBeClassified;
    LookupPageId = levels;
    fields
    {
        field(1; "Warning Level"; Option)
        {

            OptionMembers = None,Low,High;
            Caption = 'Warning Level';

        }
        field(2; Description; text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }
        field(3; Balance; Integer)
        {
            Caption = 'Balance';
        }
    }

    keys
    {
        key(PK; "Warning Level")
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