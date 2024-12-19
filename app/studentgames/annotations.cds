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
    UI.CreateHidden : false,
    UI.UpdateHidden : false,
    UI.DeleteHidden : false
);

annotate service.Student with @(
    UI.HeaderInfo : {
        TypeName : 'Student',
        TypeNamePlural : 'Students',
        Title : {Value : 'Student Page'},
        Description : {Value : 'Hier vind je de student details en zijn/haar games.'}
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
            Label : 'Student Information',
            Target : '@UI.FieldGroup#GeneratedGroup1'
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'FavoriteGames',
            Label : 'Favorite Games',
            Target : 'to_favos/@UI.LineItem' // Correct pad naar de annotatie
        }
    ]
);

annotate service.FavoriteGame with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Game Name',
            Value : to_game.Name
        },
        {
            $Type : 'UI.DataField',
            Label : 'Genre',
            Value : to_game.Genre
        },
        {
            $Type : 'UI.DataField',
            Label : 'Publisher',
            Value : to_game.Publisher
        }
    ],
    UI.SelectionFields : [
        Game_ID, // Zorg dat Game_ID hier beschikbaar is voor selectie
        to_game.Name
    ],
    UI.FieldGroup#GeneralInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Game ID',
                Value : Game_ID
            },
            {
                $Type : 'UI.DataField',
                Label : 'Game Name',
                Value : to_game.Name
            },
            {
                $Type : 'UI.DataField',
                Label : 'Genre',
                Value : to_game.Genre
            }
        ]
    }
);
