report 50371 "Sample AL"
{
    ApplicationArea = All;
    Caption = 'Sample AL';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Reports\SampleAL.rdl';
    dataset
    {
        dataitem(SampleAL; "Sample AL")
        {
            column(Code; "Code")
            {
            }
            column(Description; Description)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
