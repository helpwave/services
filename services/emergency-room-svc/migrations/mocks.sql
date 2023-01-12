
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('dd8169ed-6bbd-4351-82d9-d50c4b85bca6', 'Emergency Room 1', point(51.9446781, 7.6114896), 'Example Address 1, 48143 Münster, Germany', true, 1);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('57138d44-3c79-4847-927e-12858ffbd701', 'Emergency Room 2', point(51.9966952, 7.5502707), 'Example Address 2, 48143 Münster, Germany', true, 3);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('000d4b4e-1534-4571-b20e-b54833d2a71b', 'Emergency Room 3', point(52.003259, 7.5695437), 'Example Address 3, 48143 Münster, Germany', true, 2);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('241a3909-9ba7-444a-bd54-55439ddc3a8a', 'Emergency Room 4', point(51.9994602, 7.5891136), 'Example Address 4, 48143 Münster, Germany', false, 5);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('09196715-e2be-4863-ba3d-11e7ee6ee250', 'Emergency Room 5', point(51.9911561, 7.6348291), 'Example Address 5, 48143 Münster, Germany', true, 4);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('8796bb6f-381f-480e-855b-839f5557a598', 'Emergency Room 6', point(51.9633923, 7.6317918), 'Example Address 6, 48143 Münster, Germany', true, 3);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('d6dec7f9-bfdd-4b4e-973b-7fd0eb3d7cf3', 'Emergency Room 7', point(51.9614508, 7.6359918), 'Example Address 7, 48143 Münster, Germany', true, 2);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('34737d3d-5f0c-4272-80ef-dc336be1cae3', 'Emergency Room 8', point(51.9566007, 7.6344626), 'Example Address 8, 48143 Münster, Germany', false, 3);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('a32b6b69-b06d-4b0e-9b5e-b8671a65450b', 'Emergency Room 9', point(51.951429, 7.6321843), 'Example Address 9, 48143 Münster, Germany', true, 1);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('53670c63-a3f7-4e4f-8316-18e5d77c752a', 'Emergency Room 10', point(51.9519102, 7.6265317), 'Example Address 10, 48143 Münster, Germany', true, 1);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('7c06d4da-0f63-465c-86a2-9b5659666e6d', 'Emergency Room 11', point(51.9227571, 7.6866608), 'Example Address 11, 48143 Münster, Germany', true, 3);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('4021a895-0a9d-4951-b9a8-af588896a65b', 'Emergency Room 12', point(51.9077268, 7.6393007), 'Example Address 12, 48143 Münster, Germany', true, 2);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('70414fa7-1bd1-48a1-b064-112cc26bd211', 'Emergency Room 13', point(51.9114272, 7.5725521), 'Example Address 13, 48143 Münster, Germany', true, 3);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('1f97b974-94f6-439d-984f-75c60a4b5fd2', 'Emergency Room 14', point(51.9462237, 7.5261342), 'Example Address 14, 48143 Münster, Germany', true, 4);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('84c59074-ee74-4a2b-a13b-da50f5feff8e', 'Emergency Room 15', point(51.9765275, 7.7025477), 'Example Address 15, 48143 Münster, Germany', false, 3);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('d0bcc89a-b093-4eb4-83a8-cb701212dcec', 'Emergency Room 16', point(50.7747388, 6.0838234), 'Example Address 16, 48143 Münster, Germany', true, 4);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('655d1389-d3b8-4b06-9709-177b045808e4', 'Emergency Room 17', point(52.5411625, 13.3123566), 'Example Address 17, 48143 Münster, Germany', true, 3);
INSERT INTO emergency_rooms (id, name, location, displayable_address, is_open, utilization) VALUES ('142c0ee4-62f0-48f7-963a-e64307a1e2ec', 'Emergency Room 18', point(51.0646112, 13.7086793), 'Example Address 18, 48143 Münster, Germany', false, 1);

INSERT INTO departments (id, name) VALUES ('b28ca0ba-3f83-4d43-ae37-3cfafdf7826e', 'shock room');
INSERT INTO departments (id, name) VALUES ('6aa18828-079a-475e-a3ca-2a1b02fb141d', 'pediatric surgery');
INSERT INTO departments (id, name) VALUES ('2bfe1bdc-1ec1-4fe5-a1ac-f57bccbd3c18', 'EmPATH unit');
INSERT INTO departments (id, name) VALUES ('a32bf21d-3eef-4309-9951-b2445270e9bc', 'trauma team');
INSERT INTO departments (id, name) VALUES ('00ac926f-0603-4def-8191-966ff93de473', 'ventilators');

INSERT INTO rooms_have_departments VALUES ('dd8169ed-6bbd-4351-82d9-d50c4b85bca6', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('dd8169ed-6bbd-4351-82d9-d50c4b85bca6', '2bfe1bdc-1ec1-4fe5-a1ac-f57bccbd3c18');
INSERT INTO rooms_have_departments VALUES ('dd8169ed-6bbd-4351-82d9-d50c4b85bca6', '00ac926f-0603-4def-8191-966ff93de473');

INSERT INTO rooms_have_departments VALUES ('57138d44-3c79-4847-927e-12858ffbd701', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('57138d44-3c79-4847-927e-12858ffbd701', 'a32bf21d-3eef-4309-9951-b2445270e9bc');
INSERT INTO rooms_have_departments VALUES ('57138d44-3c79-4847-927e-12858ffbd701', '00ac926f-0603-4def-8191-966ff93de473');

INSERT INTO rooms_have_departments VALUES ('000d4b4e-1534-4571-b20e-b54833d2a71b', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('000d4b4e-1534-4571-b20e-b54833d2a71b', '6aa18828-079a-475e-a3ca-2a1b02fb141d');

INSERT INTO rooms_have_departments VALUES ('241a3909-9ba7-444a-bd54-55439ddc3a8a', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('241a3909-9ba7-444a-bd54-55439ddc3a8a', 'a32bf21d-3eef-4309-9951-b2445270e9bc');
INSERT INTO rooms_have_departments VALUES ('241a3909-9ba7-444a-bd54-55439ddc3a8a', '00ac926f-0603-4def-8191-966ff93de473');

INSERT INTO rooms_have_departments VALUES ('09196715-e2be-4863-ba3d-11e7ee6ee250', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('09196715-e2be-4863-ba3d-11e7ee6ee250', '2bfe1bdc-1ec1-4fe5-a1ac-f57bccbd3c18');
INSERT INTO rooms_have_departments VALUES ('09196715-e2be-4863-ba3d-11e7ee6ee250', '00ac926f-0603-4def-8191-966ff93de473');

INSERT INTO rooms_have_departments VALUES ('8796bb6f-381f-480e-855b-839f5557a598', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('8796bb6f-381f-480e-855b-839f5557a598', 'a32bf21d-3eef-4309-9951-b2445270e9bc');
INSERT INTO rooms_have_departments VALUES ('8796bb6f-381f-480e-855b-839f5557a598', '00ac926f-0603-4def-8191-966ff93de473');

INSERT INTO rooms_have_departments VALUES ('d6dec7f9-bfdd-4b4e-973b-7fd0eb3d7cf3', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('d6dec7f9-bfdd-4b4e-973b-7fd0eb3d7cf3', '6aa18828-079a-475e-a3ca-2a1b02fb141d');

INSERT INTO rooms_have_departments VALUES ('34737d3d-5f0c-4272-80ef-dc336be1cae3', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('34737d3d-5f0c-4272-80ef-dc336be1cae3', 'a32bf21d-3eef-4309-9951-b2445270e9bc');
INSERT INTO rooms_have_departments VALUES ('34737d3d-5f0c-4272-80ef-dc336be1cae3', '00ac926f-0603-4def-8191-966ff93de473');

INSERT INTO rooms_have_departments VALUES ('a32b6b69-b06d-4b0e-9b5e-b8671a65450b', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('a32b6b69-b06d-4b0e-9b5e-b8671a65450b', '2bfe1bdc-1ec1-4fe5-a1ac-f57bccbd3c18');
INSERT INTO rooms_have_departments VALUES ('a32b6b69-b06d-4b0e-9b5e-b8671a65450b', '00ac926f-0603-4def-8191-966ff93de473');

INSERT INTO rooms_have_departments VALUES ('53670c63-a3f7-4e4f-8316-18e5d77c752a', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('53670c63-a3f7-4e4f-8316-18e5d77c752a', 'a32bf21d-3eef-4309-9951-b2445270e9bc');
INSERT INTO rooms_have_departments VALUES ('53670c63-a3f7-4e4f-8316-18e5d77c752a', '00ac926f-0603-4def-8191-966ff93de473');

INSERT INTO rooms_have_departments VALUES ('7c06d4da-0f63-465c-86a2-9b5659666e6d', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('7c06d4da-0f63-465c-86a2-9b5659666e6d', '6aa18828-079a-475e-a3ca-2a1b02fb141d');

INSERT INTO rooms_have_departments VALUES ('4021a895-0a9d-4951-b9a8-af588896a65b', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('4021a895-0a9d-4951-b9a8-af588896a65b', 'a32bf21d-3eef-4309-9951-b2445270e9bc');
INSERT INTO rooms_have_departments VALUES ('4021a895-0a9d-4951-b9a8-af588896a65b', '00ac926f-0603-4def-8191-966ff93de473');

INSERT INTO rooms_have_departments VALUES ('70414fa7-1bd1-48a1-b064-112cc26bd211', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('70414fa7-1bd1-48a1-b064-112cc26bd211', '2bfe1bdc-1ec1-4fe5-a1ac-f57bccbd3c18');
INSERT INTO rooms_have_departments VALUES ('70414fa7-1bd1-48a1-b064-112cc26bd211', '00ac926f-0603-4def-8191-966ff93de473');

INSERT INTO rooms_have_departments VALUES ('1f97b974-94f6-439d-984f-75c60a4b5fd2', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('1f97b974-94f6-439d-984f-75c60a4b5fd2', 'a32bf21d-3eef-4309-9951-b2445270e9bc');
INSERT INTO rooms_have_departments VALUES ('1f97b974-94f6-439d-984f-75c60a4b5fd2', '00ac926f-0603-4def-8191-966ff93de473');

INSERT INTO rooms_have_departments VALUES ('84c59074-ee74-4a2b-a13b-da50f5feff8e', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('84c59074-ee74-4a2b-a13b-da50f5feff8e', '6aa18828-079a-475e-a3ca-2a1b02fb141d');

INSERT INTO rooms_have_departments VALUES ('d0bcc89a-b093-4eb4-83a8-cb701212dcec', 'b28ca0ba-3f83-4d43-ae37-3cfafdf7826e');
INSERT INTO rooms_have_departments VALUES ('d0bcc89a-b093-4eb4-83a8-cb701212dcec', 'a32bf21d-3eef-4309-9951-b2445270e9bc');
INSERT INTO rooms_have_departments VALUES ('d0bcc89a-b093-4eb4-83a8-cb701212dcec', '00ac926f-0603-4def-8191-966ff93de473');

