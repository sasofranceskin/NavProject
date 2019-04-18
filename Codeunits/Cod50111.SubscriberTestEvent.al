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
<<<<<<< HEAD
                    Error('Customer has High Warning! bla bla 1111 2222 33 44');
=======
                    Error('Customer has High Warning! bla bla 1111 2222');
                    Error('github');
>>>>>>> 7804a9ddf2de4895a900b2382c64caff0595c052
                end;
        end;
    end;
}
