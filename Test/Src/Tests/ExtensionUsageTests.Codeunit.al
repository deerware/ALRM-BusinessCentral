codeunit 79001 "C4BC Extension Usage Tests"
{
    Subtype = Test;
    TestPermissions = Disabled;

    var
        Assert: Codeunit Assert;


    [Test]
    /// <summary> 
    /// Description for TestObjectName.
    /// </summary>
    procedure TestObjectNameDuplicity()
    var
        C4BCExtensionLine: Record "C4BC Extension Line";
        C4BCObjectRangeTestLibrary: Codeunit "C4BC Object Range Test Library";
    begin
        //[GIVEN] given
        C4BCObjectRangeTestLibrary.InitializeAssignableRanges();
        C4BCObjectRangeTestLibrary.InitializeExtensions();

        //[WHEN] when
        C4BCObjectRangeTestLibrary.SetObjectNameTemplate();
        C4BCObjectRangeTestLibrary.SetExtensionUsage();
        C4BCExtensionLine.SetRange("Assignable Range Code", C4BCObjectRangeTestLibrary.C4BCAssignableRangeHeader_Code_01());
        C4BCExtensionLine.SetRange("Object Type", C4BCExtensionLine."Object Type"::"Table Extension");
        C4BCExtensionLine.FindSet();
        C4BCExtensionLine.Validate("Object Name", 'C4BC My Object');
        C4BCExtensionLine.Modify(true);
        C4BCExtensionLine.Next(1);

        //[THEN] then
        repeat
            asserterror C4BCExtensionLine.Validate("Object Name", 'C4BC My Object');
            Assert.ExpectedError('with the same name');
        until C4BCExtensionLine.Next() < 1;
    end;
}
