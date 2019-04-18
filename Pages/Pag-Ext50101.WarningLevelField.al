pageextension 50101 "WarningLevelField" extends "Customer List"
{
    layout
    {
        addfirst(Control1)
        {
            field("Warning Level"; "Warning Level")
            {
                Enabled = TRUE;
                ApplicationArea = ALL;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}