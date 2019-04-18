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
                Message('Customer has Low Warning! low warning!!!!');
            end else
                if Customer."Warning Level" = Customer."Warning Level"::High then begin
                    Error('Customer has High Warning! bla bla 1111 2222');
                    Error('github');
                end;
        end;
    end;
}
