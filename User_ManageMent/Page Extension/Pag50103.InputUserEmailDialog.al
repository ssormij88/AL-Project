page 50103 "Input User Email Dialog"
{
    Caption = 'Input User Email';
    PageType = StandardDialog;

    layout
    {
        area(Content)
        {
            field(UserEmail; UserEmail)
            {
                ApplicationArea = All;
                Caption = 'User Email';
                ExtendedDatatype = EMail;
                ToolTip = 'User Emailsss';
            }
        }
    }
    var
        UserEmail: Text;

    procedure SynchronizesAUser()
    var
        AADUserMgt: Codeunit "Azure AD User Management";
    begin
        AADUserMgt.SynchronizeLicensedUserFromDirectory(UserEmail);

    end;

    procedure DeleteUser()
    var
        jUser: Record User;
    begin
        if UserEmail = '' then
            Error('Email is required.');
        jUser.Reset();
        jUser.SetFilter("Authentication Email", '*' + UserEmail + '*');
        IF jUser.FindSet() then begin
            repeat
                jUser.Delete();

            until jUser.Next() = 0;
            Message(UserEmail + ' is deleted!');
        end;
    end;
}
