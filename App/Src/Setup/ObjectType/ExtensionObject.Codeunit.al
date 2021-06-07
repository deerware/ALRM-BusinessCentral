/// <summary>
/// Codeunit C4BC Extension Object (ID 74179004) implements Interface C4BC IObject Type.
/// </summary>
codeunit 74179004 "C4BC Extension Object" implements "C4BC IObject Type"
{
    /// <summary> 
    /// Specifies whether the objects are licensed or are free to use
    /// </summary>
    /// <returns>Return variable "Boolean".</returns>
    procedure IsLicensed(): Boolean
    begin
        exit(false);
    end;

    /// <summary> 
    /// Specifies whether the object type use ID for their identification
    /// </summary>
    /// <returns>Return variable "Boolean".</returns>
    procedure HasIDs(): Boolean
    begin
        exit(true);
    end;

    /// <summary>
    /// Specifies whether the newly created object extends already existing object.
    /// </summary>
    /// <returns>Return value of type "Boolean".</returns>
    procedure ExtendOtherObjects(): Boolean
    begin
        exit(true);
    end;
}