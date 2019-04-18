page 50111 "level"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Level;
    Editable = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Code; "Warning Level")
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Balance; Balance)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Update Warning Level on Customers")
            {
                ApplicationArea = All;
                Image = Process;
                Promoted = true;

                trigger OnAction()
                var
                    UpdateWarningLevelOncustomers: Codeunit UpdateWarningLevelCustBalance;
                begin
                    UpdateWarningLevelOncustomers.Run();
                end;
            }
        }
    }
    var
        myInt: Integer;
}