pageextension 50351 "Customer Card Ext." extends "Customer Card"
{
    layout
    {
        addafter("Payment Terms Code")
        {
            field("Payment Terms AL"; Rec."Payment Terms AL")
            {
                ApplicationArea = All;
                Caption = 'Payment Terms AL';
            }
            field("Payment Terms Description"; Rec."Payment Terms Description")
            {
                ApplicationArea = All;
            }
            field("Item No."; Rec."Item No.")
            {
                ApplicationArea = All;
                ShowMandatory = true;
                trigger OnLookup(var Text: Text): Boolean
                var
                    ItemRec: Record Item;
                begin
                    ItemRec.Reset();
                    if Page.RunModal(Page::"Item List", ItemRec) = Action::LookupOK then begin
                        Rec."Item No." := ItemRec."No.";
                        Rec."Item Description" := ItemRec.Description;
                    end;

                end;
            }
            field("Item Description"; Rec."Item Description")
            {
                ApplicationArea = All;
            }
            field("AL Option"; Rec."AL Option")
            {
                ApplicationArea = All;
            }
        }
    }
}
