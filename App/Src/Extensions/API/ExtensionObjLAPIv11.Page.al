/// <summary>
/// Page ART Extension Obj.L. API v1.1 (ID 74179015).
/// </summary>
page 74179015 "ART Extension Obj.L. API v1.1"
{
    PageType = API;
    Caption = 'Extension Object Lines API';
    APIPublisher = 'teamARTAAAE';
    APIGroup = 'extension';
    APIVersion = 'v1.1';
    EntityName = 'extensionObjectLine';
    EntitySetName = 'extensionObjectLines';
    SourceTable = "ART Extension Object Line";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field(systemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                }
                field("code"; Rec."Extension Code")
                {
                    ApplicationArea = All;
                }
                field(objectID; Rec."Object ID")
                {
                    ApplicationArea = All;
                }
                field(objectType; Rec."Object Type")
                {
                    ApplicationArea = All;
                }
                field(id; Rec.ID)
                {
                    ApplicationArea = All;
                }
                field(name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                }
                field(systemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                }
                field(systemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    var
        ARTALRMSetup: Record "ART ALRM Setup";
    begin
        ARTALRMSetup.FindFirst();
        ARTALRMSetup.CheckAPIVersion(ARTALRMSetup."Minimal API Version"::"v1.1");
    end;
}