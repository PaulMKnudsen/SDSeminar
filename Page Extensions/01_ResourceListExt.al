pageextension 123456701 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {

        modify(Type)
        {
            Visible = Showtype;
        }
        addafter("Type")
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = Showtype;
            }
        }
    }

    trigger OnOpenPage();
    begin
        FilterGroup(3);
        Showtype := (GetFilter(Type) = '');
        ShowMaxField :=
        (GetFilter(Type) = format(Type::Machine));
        FilterGroup(0);
    end;

    var
        [InDataSet]
        Showtype: Boolean;

        [InDataSet]
        Showmaxfield: Boolean;

}