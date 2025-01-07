pageextension 50350 CustomerPageExt extends "Customer List"
{
    layout
    {
        addafter("No.")
        {
            field("Field AL"; Rec."Field AL")
            {
                ApplicationArea = All;
                Importance = Promoted;
            }
        }
        // Add changes to page layout here
    }
}
