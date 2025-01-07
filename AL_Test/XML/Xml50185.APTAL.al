xmlport 50185 "APT AL"
{
    Caption = 'APT AL';
    schema
    {
        textelement(RootNodeName)
        {
            tableelement(HandshakeRegister; HandshakeRegister)
            {
                fieldelement(HandshakeType; HandshakeRegister."Handshake Type")
                {
                }
                fieldelement(CompanyName; HandshakeRegister."Company Name")
                {
                }
                fieldelement(EntryNo; HandshakeRegister."Entry No.")
                {
                }
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
