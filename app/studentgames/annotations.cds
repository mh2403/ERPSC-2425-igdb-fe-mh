using GameService as service from '../../srv/game-service';

annotate service.Student with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Student_ID',
            Value : Student_ID
        },
        {
            $Type : 'UI.DataField',
            Label : 'First_name',
            Value : First_name
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last_name',
            Value : Last_name
        }
    ],
    UI.CreateHidden : false, // Create knop zichtbaar
    UI.UpdateHidden : false, // Edit knop zichtbaar
    UI.DeleteHidden : false  // Delete knop zichtbaar
);

annotate service.Student with @(
    UI.HeaderInfo : {
        TypeName : 'Student',
        TypeNamePlural : 'Students',
        Title : {Value : 'Maak hier een nieuwe student aan'},
        Description : {Value : 'Vul de informatie in om een nieuwe student toe te voegen.'}
    },
    UI.FieldGroup#GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Student_ID',
                Value : Student_ID
            },
            {
                $Type : 'UI.DataField',
                Label : 'First_name',
                Value : First_name
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last_name',
                Value : Last_name
            }
        ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneralInfo',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1'
        }
    ]
);
