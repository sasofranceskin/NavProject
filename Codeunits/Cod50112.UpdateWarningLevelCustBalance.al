codeunit 50112 "UpdateWarningLevelCustBalance"
{
    trigger OnRun()
    begin
        UpdateWarningLevelOnCustomers;
    end;

    local procedure UpdateWarningLevelOnCustomers()
    var
        Customer: Record Customer;
        WarningLevel: Record Level;
    begin
        if Customer.FindFirst() then repeat
                                         CalcOverdueBalaceLCY(Customer);
                                         if Customer."Balance (LCY)" > 0 then begin
                                             if SetWarningLevelbasedOnOverdueBalance(Customer) then
                                                 Customer.Modify();
                                         end;
            until Customer.Next() = 0;


    end;

    local procedure CalcOverdueBalaceLCY(var Customer: Record Customer)
    var
    begin
        if Customer.GetFilter("Date Filter") = '' then begin
            Customer.SetFilter("Date Filter", '..%1', WorkDate());
            Customer.CalcFields("Balance (LCY)");
        end;
    end;

    local procedure SetWarningLevelbasedOnOverdueBalance(var Customer: Record Customer): Boolean
    var
        WarningLevel: Record Level;
        customerModified: Boolean;
    begin
        if WarningLevel.FindFirst() then repeat
                                             if WarningLevel.Balance <= Customer."Balance (LCY)" then begin
                                                 Customer."Warning Level" := WarningLevel."Warning Level";
                                                 customerModified := true;
                                             end;
            until WarningLevel.Next() = 1;
        exit(customerModified);
    end;

    var
        myInt: Integer;
}