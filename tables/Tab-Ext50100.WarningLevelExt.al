tableextension 50100 "WarningLevelExt" extends "Customer" //MyTargetTableId
{
    fields
    {
        field(50100; "Warning Level"; Option)
        {
            OptionMembers = None,Low,High;
            Caption = 'Warning Level';

        }
    }

}