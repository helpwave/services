-- organizations

insert into organizations (id, long_name, short_name, contact_email, is_personal, created_by_user_id) values ('77e49c1c-340b-4921-b5b4-fffbb8d3df6c', 'Uniklinik Münster', 'Münster', 'max.mustermann@helpwave.de', false, '51dce0ea-2e72-412a-988e-8e9089a68572');
insert into organizations (id, long_name, short_name, contact_email, is_personal, created_by_user_id) values ('ead68d1d-db6b-4cf0-b316-ac9064c66413', 'Uniklinik Aachen', 'Aachen', 'testine.test@helpwave.de', false, '78b6eada-4621-4987-a2c6-ac792bf59483');
insert into organizations (id, long_name, short_name, contact_email, is_personal, created_by_user_id) values ('cc401e43-d76c-4f0e-933a-3ddfab895e59', 'Krankenhaus Günzburg', 'Günzburg', 'markus.tester@helpwave.de', false, '8b5ff90a-7548-454e-9684-6f2c30677db5');
insert into organizations (id, long_name, short_name, contact_email, is_personal, created_by_user_id) values ('792145d6-39ae-4596-95b3-b2fd907256e3', 'Uniklinik Köln', 'Köln', 'martin.test@helpwave.de', false, '8b5ff90a-7548-454e-9684-6f2c30677db5');
insert into organizations (id, long_name, short_name, contact_email, is_personal, created_by_user_id) values ('1685fa66-b16e-4b5b-8b9e-0a473d3665c3', 'Teil-Organisation', 'Teil', 'erika.musterfrau@helpwave.de', false, '8b5ff90a-7548-454e-9684-6f2c30677db5');
insert into organizations (id, long_name, short_name, contact_email, is_personal, created_by_user_id) values ('d311e7d9-85cd-4ae9-a0c0-7a0abc6dd48e', 'Leer-Organisation', 'Leer', 'leer.markus@helpwave.de', false, '44612c5a-4e61-4318-8f2b-b734eef305d2');

-- users

insert into users (id, email, nickname, name) values ('51dce0ea-2e72-412a-988e-8e9089a68572', 'maike.test@helpwave.de', 'Maike', 'Maike');
insert into users (id, email, nickname, name) values ('78b6eada-4621-4987-a2c6-ac792bf59483', 'tim.testmann@helpwave.de', 'Tim', 'Tim');
insert into users (id, email, nickname, name) values ('8b5ff90a-7548-454e-9684-6f2c30677db5', 'heinrich.heine@helpwave.de', 'Heine', 'Heinrich');
insert into users (id, email, nickname, name) values ('9b045845-b5bf-456b-94a3-0b7bfd0bd0c5', 'annika.b@helpwave.de', 'Annika', 'Annika');
insert into users (id, email, nickname, name) values ('f6cfe2aa-8f1b-4fbd-b193-946c3815a9ec', 'moritz.wetter@helpwave.de', 'wetter', 'Moritz');
insert into users (id, email, nickname, name) values ('44612c5a-4e61-4318-8f2b-b734eef305d2', 'member.tester@helpwave.de', 'mem', 'Moritz');


-- memberships

insert into memberships (id, user_id, organization_id, is_admin) values ('769e37e6-6e98-4ee7-8c03-5ce32c3783ff', '51dce0ea-2e72-412a-988e-8e9089a68572', 'ead68d1d-db6b-4cf0-b316-ac9064c66413', false);
insert into memberships (id, user_id, organization_id, is_admin) values ('9a2c44ee-57a3-4154-8d89-c26ed08d7eb0', '51dce0ea-2e72-412a-988e-8e9089a68572', '77e49c1c-340b-4921-b5b4-fffbb8d3df6c', false);
insert into memberships (id, user_id, organization_id, is_admin) values ('16c4d803-367c-47cc-ae26-7a04143490aa', '8b5ff90a-7548-454e-9684-6f2c30677db5', 'ead68d1d-db6b-4cf0-b316-ac9064c66413', true);
insert into memberships (id, user_id, organization_id, is_admin) values ('0bc89375-632a-47e5-94b6-52a0ee3d4687', '44612c5a-4e61-4318-8f2b-b734eef305d2', 'd311e7d9-85cd-4ae9-a0c0-7a0abc6dd48e', true);


-- invitations
insert into invitations (id, email, organization_id, state) values ('d20a3fed-c0ca-45d6-a437-6a691ef7107b', 'invitation@mail.de', '77e49c1c-340b-4921-b5b4-fffbb8d3df6c', 1);
insert into invitations (id, email, organization_id, state) values ('dcf6280b-dee6-4a0f-826b-cc506476e1e9', 'invitation@mail.de', 'cc401e43-d76c-4f0e-933a-3ddfab895e59', 2);
insert into invitations (id, email, organization_id, state) values ('d0bd85ee-910a-4578-bbdc-a4346a624a34', 'mailer@helpwave.de', 'cc401e43-d76c-4f0e-933a-3ddfab895e59', 2);
insert into invitations (id, email, organization_id, state) values ('07c4f3fd-5146-4bda-aece-c02aa0c50fdc', 'marvin@helpwave.de', 'cc401e43-d76c-4f0e-933a-3ddfab895e59', 2);
insert into invitations (id, email, organization_id, state) values ('4e857c97-0afc-4e3e-97a6-cc9d346f68aa', 'tom.breitband@helpwave.de', 'cc401e43-d76c-4f0e-933a-3ddfab895e59', 1);
insert into invitations (id, email, organization_id, state) values ('2cbb3841-09dc-4015-aef1-95fb389700d4', 'acceptor@helpwave.de', '77e49c1c-340b-4921-b5b4-fffbb8d3df6c', 1);
insert into invitations (id, email, organization_id, state) values ('e7788133-8814-4859-8407-44617828d4b1', 'acceptor2@helpwave.de', '77e49c1c-340b-4921-b5b4-fffbb8d3df6c', 3);
insert into invitations (id, email, organization_id, state) values ('0bdd571f-54d8-42f6-b449-624cfdead279', 'rejector@helpwave.de', 'ead68d1d-db6b-4cf0-b316-ac9064c66413', 1);
insert into invitations (id, email, organization_id, state) values ('3232a80e-181f-462f-ad0d-8db54881afa7', 'rejector2@helpwave.de', 'ead68d1d-db6b-4cf0-b316-ac9064c66413', 4);
insert into invitations (id, email, organization_id, state) values ('1bb75dca-0ec0-485e-85f4-b7a813c89a6b', 'revoker@helpwave.de', 'ead68d1d-db6b-4cf0-b316-ac9064c66413', 1);
insert into invitations (id, email, organization_id, state) values ('6acc312b-62ce-4077-ab74-2f6794272b9c', 'revoker2@helpwave.de', 'ead68d1d-db6b-4cf0-b316-ac9064c66413', 3);
insert into invitations (id, email, organization_id, state) values ('c23a0d63-e4ce-46cd-ae5c-30990d02ebe4', 'revoker3@helpwave.de', 'ead68d1d-db6b-4cf0-b316-ac9064c66413', 1);


