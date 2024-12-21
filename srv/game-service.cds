using {sap.igdbfe.cap as my} from '../db/schema';

annotate GameService.Student with @odata.draft.enabled;
annotate GameService.FavoriteGame with @odata.draft.enabled;

service GameService {
    entity Student as projection on my.Student {
        *,
        to_favos : Association to many FavoriteGame on to_favos.Student_ID = $self.Student_ID
    };

    entity FavoriteGame as projection on my.FavoriteGame {
        *,
        to_game : Association to my.Game on to_game.Game_ID = $self.Game_ID
    };

    entity Game @readonly as projection on my.Game;
}
