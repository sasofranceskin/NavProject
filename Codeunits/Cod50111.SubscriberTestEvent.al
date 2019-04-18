codeunit 50111 "SubscriberTestEvent"
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', true, true)]
    local procedure MyProcedure(var salesheader: Record "Sales Header")
    var
        Customer: Record Customer;
        Level: Record Level;

    begin
        if Customer.GET(salesheader."Sell-to Customer No.") then begin
            if Customer."Warning Level" = Customer."Warning Level"::Low then begin
                Message('Customer has Low Warning!');
            end else
                if Customer."Warning Level" = Customer."Warning Level"::High then begin
                    Error('Customer has High Warning!');
                end;
        end;
    end;
}
