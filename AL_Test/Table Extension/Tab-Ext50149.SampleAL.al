tableextension 50150 "CustomerTableExt" extends Customer
{
    fields
    {
        field(50015; "Field AL"; Code[20])
        {
            Caption = 'Field AL';
            DataClassification = ToBeClassified;
        }

        field(50016; "Payment Terms AL"; Code[30])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Payment Terms";
            trigger OnValidate()
            var
                PayTerms: Record "Payment Terms";
            begin
                PayTerms.Reset();
                PayTerms.SetRange(Code, "Payment Terms AL");
                if PayTerms.FindFirst() then
                    "Payment Terms Description" := PayTerms.Description
                else begin
                    Error('Invalid code');
                end;
            end;
        }
        field(50017; "Payment Terms Description"; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50018; "Item No."; Code[50])
        {
            DataClassification = ToBeClassified;

        }
        field(50019; "Item Description"; Text[250])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50020; "AL Option"; Option)
        {
            OptionMembers = " ",Capt1,Capt2;
            OptionCaption = ' ,Capt1,Capt2';
        }
    }
}
