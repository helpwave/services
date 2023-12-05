-- organizations

insert into organizations (id, long_name, short_name, contact_email, is_personal, created_by_user_id) values ('77e49c1c-340b-4921-b5b4-fffbb8d3df6c', 'Uniklinik Münster', 'Münster', 'max.mustermann@helpwave.de', false, '51dce0ea-2e72-412a-988e-8e9089a68572');
insert into organizations (id, long_name, short_name, contact_email, is_personal, created_by_user_id) values ('ead68d1d-db6b-4cf0-b316-ac9064c66413', 'Uniklinik Aachen', 'Aachen', 'testine.test@helpwave.de', false, '78b6eada-4621-4987-a2c6-ac792bf59483');
insert into organizations (id, long_name, short_name, contact_email, is_personal, created_by_user_id) values ('cc401e43-d76c-4f0e-933a-3ddfab895e59', 'Krankenhaus Günzburg', 'Günzburg', 'markus.tester@helpwave.de', false, '8b5ff90a-7548-454e-9684-6f2c30677db5');
insert into organizations (id, long_name, short_name, contact_email, is_personal, created_by_user_id) values ('792145d6-39ae-4596-95b3-b2fd907256e3', 'Uniklinik Köln', 'Köln', 'martin.test@helpwave.de', false, '8b5ff90a-7548-454e-9684-6f2c30677db5');
insert into organizations (id, long_name, short_name, contact_email, is_personal, created_by_user_id) values ('1685fa66-b16e-4b5b-8b9e-0a473d3665c3', 'Teil-Organisation', 'Teil', 'erika.musterfrau@helpwave.de', false, '8b5ff90a-7548-454e-9684-6f2c30677db5');

-- users

insert into users (id, email, nickname, name) values ('51dce0ea-2e72-412a-988e-8e9089a68572', 'maike.test@helpwave.de', 'Maike', 'Maike');
insert into users (id, email, nickname, name) values ('78b6eada-4621-4987-a2c6-ac792bf59483', 'tim.testmann@helpwave.de', 'Tim', 'Tim');
insert into users (id, email, nickname, name) values ('8b5ff90a-7548-454e-9684-6f2c30677db5', 'heinrich.heine@helpwave.de', 'Heine', 'Heinrich');
insert into users (id, email, nickname, name) values ('9b045845-b5bf-456b-94a3-0b7bfd0bd0c5', 'heinrich.heine@helpwave.de', 'Annika', 'Annika');

-- memberships

insert into memberships (id, user_id, organization_id, is_admin) values ('769e37e6-6e98-4ee7-8c03-5ce32c3783ff', '51dce0ea-2e72-412a-988e-8e9089a68572', 'ead68d1d-db6b-4cf0-b316-ac9064c66413', false);
insert into memberships (id, user_id, organization_id, is_admin) values ('769e37e6-6e98-4ee7-8c03-5ce32c3783f2', '51dce0ea-2e72-412a-988e-8e9089a68572', '77e49c1c-340b-4921-b5b4-fffbb8d3df6c', false);
insert into memberships (id, user_id, organization_id, is_admin) values ('16c4d803-367c-47cc-ae26-7a04143490aa', '8b5ff90a-7548-454e-9684-6f2c30677db5', 'ead68d1d-db6b-4cf0-b316-ac9064c66413', false);


-- invitations
insert into invitations (id, email, organization_id, state) values ('d20a3fed-c0ca-45d6-a437-6a691ef7107b', 'invitation@mail.de', '77e49c1c-340b-4921-b5b4-fffbb8d3df6c', 1);
insert into invitations (id, email, organization_id, state) values ('dcf6280b-dee6-4a0f-826b-cc506476e1e9', 'invitation@mail.de', 'cc401e43-d76c-4f0e-933a-3ddfab895e59', 2);
insert into invitations (id, email, organization_id, state) values ('d0bd85ee-910a-4578-bbdc-a4346a624a34', 'mailer@helpwave.de', 'cc401e43-d76c-4f0e-933a-3ddfab895e59', 2);
insert into invitations (id, email, organization_id, state) values ('07c4f3fd-5146-4bda-aece-c02aa0c50fdc', 'marvin@helpwave.de', 'cc401e43-d76c-4f0e-933a-3ddfab895e59', 2);
insert into invitations (id, email, organization_id, state) values ('4e857c97-0afc-4e3e-97a6-cc9d346f68aa', 'tom.breitband@helpwave.de', 'cc401e43-d76c-4f0e-933a-3ddfab895e59', 1);
