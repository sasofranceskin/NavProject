pageextension 50100 "WarningLevel" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Warning Level"; "Warning Level")
            {
                ApplicationArea = all;
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