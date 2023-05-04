pageextension 50110 "Item Card Picture Extension" extends "Item Card"
{
    layout
    {
        // Add changes to page layout here

    }

    actions
    {
        // Add changes to page actions here
        addlast("Functions")
        {
            action(ImportItemPicture)
            {
                Caption = 'Import Item Picture';
                ApplicationArea = All;
                Image = Import;

                trigger OnAction()
                var
                    ImageManagement: Codeunit "Image Management";
                begin
                    ImageManagement.ImportItemPicture(Rec);
                end;
            }
        }
    }

    var
        myInt: Integer;
}