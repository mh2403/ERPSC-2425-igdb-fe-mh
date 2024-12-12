using {sap.igdbfe.cap as my} from '../db/schema';

service GameService {
    @odata.draft.enabled
    entity Student as projection on my.Student; // CRUD-functionaliteit voor studenten

    entity FavoriteGame as projection on my.FavoriteGame; // Favoriete games beheren via Student

    entity Game @readonly as projection on my.Game; // Alleen-lezen voor games
}
