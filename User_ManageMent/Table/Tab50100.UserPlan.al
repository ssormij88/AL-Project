table 50100 UserPlan
{
    TableType = Temporary;
    Caption = 'UserPlan';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "User Security ID"; Guid)
        {
            Caption = 'User Security ID';
        }
        field(2; "Plan ID"; Guid)
        {
            Caption = 'Plan ID';
        }
        field(3; "User Name"; Code[50])
        {
            Caption = 'User Name';
        }
        field(4; "Plan Name"; Text[50])
        {
            Caption = 'Plan Name';
        }
        field(5; State; Option)
        {
            Caption = 'User State';
            OptionCaption = 'Enabled,Disabled';
            OptionMembers = Enabled,Disabled;
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Plan ID", "User Security ID")
        {
            Clustered = true;
        }
    }
}
