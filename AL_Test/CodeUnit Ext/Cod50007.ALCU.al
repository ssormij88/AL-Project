codeunit 50007 "AL CU"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post (Yes/No)", 'OnBeforeConfirmPost', '', true, true)]
    procedure OnBeforeConfirmPost(var PurchaseHeader: Record "Purchase Header")
    begin
        Error('JIM TEST CAL');

    end;

}
