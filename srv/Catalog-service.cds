using { cap.db as db } from '../db/Schema';
service CatalogService @(path:'/Catalog'){

  @readonly entity Major as projection on db.Projects {*,
  key id, user.email as Email_Address  } ;
}