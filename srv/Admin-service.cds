using { cap.db as db } from '../db/Schema';
service AdminService @(path:'/Admin'){

    @odata.draft.enabled
    entity Users as projection on db.Users;
    entity Projects as select from db.Projects;

}