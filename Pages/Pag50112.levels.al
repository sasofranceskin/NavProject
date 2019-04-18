page 50112 "levels"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Level;
    CardPageId = level;
    layout
    {
        area(Content)
        {
            repeater(Contorl)
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

}