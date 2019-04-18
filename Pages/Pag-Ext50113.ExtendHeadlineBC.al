pageextension 50113 "ExtendHeadlineBC" extends "Headline RC Order Processor"
{
    layout
    {
        addfirst(Control2)
        {
            field(GreetingText2; GreetingText2)
            {
            }
        }
    }
    trigger onOpenPage()
    var
        Customer: Record Customer;
        NoOfCustWithHinghWarningLevel: Integer;
    begin
        Customer.SetRange("Warning Level", Customer."Warning Level"::High);
        NoOfCustWithHinghWarningLevel := Customer.Count();

        GreetingText2 := '%1 Customers with High Warning Level!';
        GreetingText2 := StrSubstNo(GreetingText2, NoOfCustWithHinghWarningLevel);
    end;

    var
        GreetingText2: Text[50];
}