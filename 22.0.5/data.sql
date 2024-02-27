--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6 (Debian 15.6-1.pgdg110+2)
-- Dumped by pg_dump version 15.3

-- Started on 2024-02-27 05:10:05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4089 (class 0 OID 17017)
-- Dependencies: 255
-- Data for Name: admin_event_entity; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4110 (class 0 OID 17353)
-- Dependencies: 276
-- Data for Name: resource_server; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4113 (class 0 OID 17389)
-- Dependencies: 279
-- Data for Name: resource_server_policy; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4118 (class 0 OID 17460)
-- Dependencies: 284
-- Data for Name: associated_policy; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4057 (class 0 OID 16439)
-- Dependencies: 223
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.realm VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', 60, 300, 60, NULL, NULL, NULL, true, false, 0, NULL, 'master', 0, NULL, false, false, false, false, 'EXTERNAL', 1800, 36000, false, false, '95c7a7c2-327d-4b25-bddc-2367a5b89f06', 1800, false, NULL, false, false, false, false, 0, 1, 30, 6, 'HmacSHA1', 'totp', 'b8baa880-9ced-4a0e-97a9-7d9ea076c3fb', '0b28bb5f-1d53-465a-9892-d193a517e7ad', '74b7d8d8-c64a-4a69-b473-81226d31460e', '57c0106a-d20d-4c45-832b-b0710236cd7a', '008d4fcc-1f6f-457a-b7c0-c72b9679936e', 2592000, false, 900, true, false, '8448c79d-a6a1-4981-9a32-99bdab8bbd9f', 0, false, 0, 0, '5b626b3a-0e8d-4fd3-8027-a7d3542883fa');


--
-- TOC entry 4091 (class 0 OID 17027)
-- Dependencies: 257
-- Data for Name: authentication_flow; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.authentication_flow VALUES ('b8baa880-9ced-4a0e-97a9-7d9ea076c3fb', 'browser', 'browser based authentication', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('3f193409-2207-429e-b77b-d7898fb30007', 'forms', 'Username, password, otp and other auth forms.', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('61f02264-3765-4b59-aa22-f74b9251cc5b', 'Browser - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('74b7d8d8-c64a-4a69-b473-81226d31460e', 'direct grant', 'OpenID Connect Resource Owner Grant', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('7013bb0a-8a5f-4f5b-8a69-6168e1cdcc92', 'Direct Grant - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('0b28bb5f-1d53-465a-9892-d193a517e7ad', 'registration', 'registration flow', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('6895da1d-c691-4de5-a579-c35d69792dfa', 'registration form', 'registration form', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'form-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('57c0106a-d20d-4c45-832b-b0710236cd7a', 'reset credentials', 'Reset credentials for a user if they forgot their password or something', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('8d0e1613-a5d0-43fc-93ba-c555dbfb6d21', 'Reset - Conditional OTP', 'Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('008d4fcc-1f6f-457a-b7c0-c72b9679936e', 'clients', 'Base authentication for clients', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'client-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('92ad7501-3334-4e3e-bf82-f5a08d04a03a', 'first broker login', 'Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('d44285bf-b9c9-4fcc-894e-fd89c073fe6c', 'User creation or linking', 'Flow for the existing/non-existing user alternatives', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('22a8e39f-f942-423d-adb3-f53ad222764d', 'Handle Existing Account', 'Handle what to do if there is existing account with same email/username like authenticated identity provider', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('a4470d1e-f7d4-43fa-a0ae-d111132689b0', 'Account verification options', 'Method with which to verity the existing account', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('ffa59d6a-35ea-45a9-a480-3ded8f5cf518', 'Verify Existing Account by Re-authentication', 'Reauthentication of existing account', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('4a2ebbf2-3833-4d47-9d48-5cc4aacfa143', 'First broker login - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('0a9a6e60-bb0d-4c27-aacd-222ca52ba737', 'saml ecp', 'SAML ECP Profile Authentication Flow', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('8448c79d-a6a1-4981-9a32-99bdab8bbd9f', 'docker auth', 'Used by Docker clients to authenticate against the IDP', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'basic-flow', true, true);


--
-- TOC entry 4092 (class 0 OID 17032)
-- Dependencies: 258
-- Data for Name: authentication_execution; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.authentication_execution VALUES ('c0b9e46c-2959-4ead-9154-8260227bbcf8', NULL, 'auth-cookie', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'b8baa880-9ced-4a0e-97a9-7d9ea076c3fb', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('29da9c0f-862c-46e2-9e65-c1fa8024c4e9', NULL, 'auth-spnego', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'b8baa880-9ced-4a0e-97a9-7d9ea076c3fb', 3, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('c70c0f54-01f1-43f7-82d2-ae02ee88d10c', NULL, 'identity-provider-redirector', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'b8baa880-9ced-4a0e-97a9-7d9ea076c3fb', 2, 25, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('1427a4dd-a5f0-46bb-8577-d0afa1a93f5b', NULL, NULL, 'db90a8ec-006d-42ea-a943-6a4382f55821', 'b8baa880-9ced-4a0e-97a9-7d9ea076c3fb', 2, 30, true, '3f193409-2207-429e-b77b-d7898fb30007', NULL);
INSERT INTO public.authentication_execution VALUES ('9756704a-806c-4059-8ccd-a32c3c3a0c5d', NULL, 'auth-username-password-form', 'db90a8ec-006d-42ea-a943-6a4382f55821', '3f193409-2207-429e-b77b-d7898fb30007', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('fbc4ade7-106b-49df-8c20-6b2b44f09067', NULL, NULL, 'db90a8ec-006d-42ea-a943-6a4382f55821', '3f193409-2207-429e-b77b-d7898fb30007', 1, 20, true, '61f02264-3765-4b59-aa22-f74b9251cc5b', NULL);
INSERT INTO public.authentication_execution VALUES ('b5425453-e972-439e-8b19-b28f207a13a7', NULL, 'conditional-user-configured', 'db90a8ec-006d-42ea-a943-6a4382f55821', '61f02264-3765-4b59-aa22-f74b9251cc5b', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('bf378670-92fb-4c1d-b990-0935c590316a', NULL, 'auth-otp-form', 'db90a8ec-006d-42ea-a943-6a4382f55821', '61f02264-3765-4b59-aa22-f74b9251cc5b', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('6ff78be8-78a2-4956-9357-3e5ba6d753de', NULL, 'direct-grant-validate-username', 'db90a8ec-006d-42ea-a943-6a4382f55821', '74b7d8d8-c64a-4a69-b473-81226d31460e', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('a83b65e9-9e62-4104-a8ba-ae6e200093b1', NULL, 'direct-grant-validate-password', 'db90a8ec-006d-42ea-a943-6a4382f55821', '74b7d8d8-c64a-4a69-b473-81226d31460e', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('61c30304-f44b-45ea-9821-ef41900c22ad', NULL, NULL, 'db90a8ec-006d-42ea-a943-6a4382f55821', '74b7d8d8-c64a-4a69-b473-81226d31460e', 1, 30, true, '7013bb0a-8a5f-4f5b-8a69-6168e1cdcc92', NULL);
INSERT INTO public.authentication_execution VALUES ('1c7abb02-d221-4d26-9f1b-5d90f4386d9e', NULL, 'conditional-user-configured', 'db90a8ec-006d-42ea-a943-6a4382f55821', '7013bb0a-8a5f-4f5b-8a69-6168e1cdcc92', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('0ab63cee-61cf-4271-8b2e-be8535495988', NULL, 'direct-grant-validate-otp', 'db90a8ec-006d-42ea-a943-6a4382f55821', '7013bb0a-8a5f-4f5b-8a69-6168e1cdcc92', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('6ba67ae0-e774-4a27-a497-42d2c6e9eb3c', NULL, 'registration-page-form', 'db90a8ec-006d-42ea-a943-6a4382f55821', '0b28bb5f-1d53-465a-9892-d193a517e7ad', 0, 10, true, '6895da1d-c691-4de5-a579-c35d69792dfa', NULL);
INSERT INTO public.authentication_execution VALUES ('7c23bb39-2f22-4b5e-86d7-23ea511791f5', NULL, 'registration-user-creation', 'db90a8ec-006d-42ea-a943-6a4382f55821', '6895da1d-c691-4de5-a579-c35d69792dfa', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('83ba645e-e4f6-4308-941a-9841ce3e61f9', NULL, 'registration-profile-action', 'db90a8ec-006d-42ea-a943-6a4382f55821', '6895da1d-c691-4de5-a579-c35d69792dfa', 0, 40, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('1c65f13a-7765-452d-aacf-281509ede8a1', NULL, 'registration-password-action', 'db90a8ec-006d-42ea-a943-6a4382f55821', '6895da1d-c691-4de5-a579-c35d69792dfa', 0, 50, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('8ec8c910-7378-4a8a-837e-3eeb8671d50b', NULL, 'registration-recaptcha-action', 'db90a8ec-006d-42ea-a943-6a4382f55821', '6895da1d-c691-4de5-a579-c35d69792dfa', 3, 60, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('1f3fa01f-b56a-4e3b-8248-3551db644ce4', NULL, 'registration-terms-and-conditions', 'db90a8ec-006d-42ea-a943-6a4382f55821', '6895da1d-c691-4de5-a579-c35d69792dfa', 3, 70, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('0962a38a-e86b-40c7-98b3-0554cf38bd24', NULL, 'reset-credentials-choose-user', 'db90a8ec-006d-42ea-a943-6a4382f55821', '57c0106a-d20d-4c45-832b-b0710236cd7a', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('9cca9e38-1008-49bf-9d1c-fdffd579d799', NULL, 'reset-credential-email', 'db90a8ec-006d-42ea-a943-6a4382f55821', '57c0106a-d20d-4c45-832b-b0710236cd7a', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('c752cf9c-e736-497b-8073-3f0539294d0f', NULL, 'reset-password', 'db90a8ec-006d-42ea-a943-6a4382f55821', '57c0106a-d20d-4c45-832b-b0710236cd7a', 0, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('ad5727ad-8ed8-410c-8810-b75457033088', NULL, NULL, 'db90a8ec-006d-42ea-a943-6a4382f55821', '57c0106a-d20d-4c45-832b-b0710236cd7a', 1, 40, true, '8d0e1613-a5d0-43fc-93ba-c555dbfb6d21', NULL);
INSERT INTO public.authentication_execution VALUES ('a2d912ab-968a-4496-baa4-c6f4f024e6ae', NULL, 'conditional-user-configured', 'db90a8ec-006d-42ea-a943-6a4382f55821', '8d0e1613-a5d0-43fc-93ba-c555dbfb6d21', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('36c93033-91c7-4a26-9e65-262391f4ea09', NULL, 'reset-otp', 'db90a8ec-006d-42ea-a943-6a4382f55821', '8d0e1613-a5d0-43fc-93ba-c555dbfb6d21', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('b054b52e-2b69-4713-8df3-0c336cea59f2', NULL, 'client-secret', 'db90a8ec-006d-42ea-a943-6a4382f55821', '008d4fcc-1f6f-457a-b7c0-c72b9679936e', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('02b8e11f-ba2e-46ae-9c68-8702ff9424b0', NULL, 'client-jwt', 'db90a8ec-006d-42ea-a943-6a4382f55821', '008d4fcc-1f6f-457a-b7c0-c72b9679936e', 2, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('943bdd8a-0616-4458-9606-891f6ce68751', NULL, 'client-secret-jwt', 'db90a8ec-006d-42ea-a943-6a4382f55821', '008d4fcc-1f6f-457a-b7c0-c72b9679936e', 2, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('afd5ad4a-00bd-428d-abf5-54f848d5d584', NULL, 'client-x509', 'db90a8ec-006d-42ea-a943-6a4382f55821', '008d4fcc-1f6f-457a-b7c0-c72b9679936e', 2, 40, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('c0dcfbc2-8a6e-4321-b442-375435487328', NULL, 'idp-review-profile', 'db90a8ec-006d-42ea-a943-6a4382f55821', '92ad7501-3334-4e3e-bf82-f5a08d04a03a', 0, 10, false, NULL, '541893c2-2fba-458b-bc29-594d7de6fa46');
INSERT INTO public.authentication_execution VALUES ('0d0293af-3878-4383-8742-fc751338bcd0', NULL, NULL, 'db90a8ec-006d-42ea-a943-6a4382f55821', '92ad7501-3334-4e3e-bf82-f5a08d04a03a', 0, 20, true, 'd44285bf-b9c9-4fcc-894e-fd89c073fe6c', NULL);
INSERT INTO public.authentication_execution VALUES ('4b9f464b-1584-4819-86e2-26cfb1a13238', NULL, 'idp-create-user-if-unique', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'd44285bf-b9c9-4fcc-894e-fd89c073fe6c', 2, 10, false, NULL, '78656842-ce4f-4290-95e7-83ad8c999de5');
INSERT INTO public.authentication_execution VALUES ('81b1b47e-8650-4789-b1ed-750e6d8c7c30', NULL, NULL, 'db90a8ec-006d-42ea-a943-6a4382f55821', 'd44285bf-b9c9-4fcc-894e-fd89c073fe6c', 2, 20, true, '22a8e39f-f942-423d-adb3-f53ad222764d', NULL);
INSERT INTO public.authentication_execution VALUES ('fd89b83a-ac05-4aaf-9e29-ad0747b26684', NULL, 'idp-confirm-link', 'db90a8ec-006d-42ea-a943-6a4382f55821', '22a8e39f-f942-423d-adb3-f53ad222764d', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('6b5dba47-5a77-4bd7-a507-06461f6462ba', NULL, NULL, 'db90a8ec-006d-42ea-a943-6a4382f55821', '22a8e39f-f942-423d-adb3-f53ad222764d', 0, 20, true, 'a4470d1e-f7d4-43fa-a0ae-d111132689b0', NULL);
INSERT INTO public.authentication_execution VALUES ('c8146abe-fff0-452f-8111-2dc78167be2d', NULL, 'idp-email-verification', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'a4470d1e-f7d4-43fa-a0ae-d111132689b0', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('04999a5e-0418-4a13-bf3f-a9b74ec58439', NULL, NULL, 'db90a8ec-006d-42ea-a943-6a4382f55821', 'a4470d1e-f7d4-43fa-a0ae-d111132689b0', 2, 20, true, 'ffa59d6a-35ea-45a9-a480-3ded8f5cf518', NULL);
INSERT INTO public.authentication_execution VALUES ('a21727cc-a922-454c-9534-2e8970b03c68', NULL, 'idp-username-password-form', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'ffa59d6a-35ea-45a9-a480-3ded8f5cf518', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('f9d9c3bd-3aa9-458a-a191-d307c98fd885', NULL, NULL, 'db90a8ec-006d-42ea-a943-6a4382f55821', 'ffa59d6a-35ea-45a9-a480-3ded8f5cf518', 1, 20, true, '4a2ebbf2-3833-4d47-9d48-5cc4aacfa143', NULL);
INSERT INTO public.authentication_execution VALUES ('7fac71c5-d235-416e-a3c9-0db5b95f71a9', NULL, 'conditional-user-configured', 'db90a8ec-006d-42ea-a943-6a4382f55821', '4a2ebbf2-3833-4d47-9d48-5cc4aacfa143', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('de902438-4e62-443a-9db4-3a39e0c59c60', NULL, 'auth-otp-form', 'db90a8ec-006d-42ea-a943-6a4382f55821', '4a2ebbf2-3833-4d47-9d48-5cc4aacfa143', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('bbeef746-138d-4eca-934f-1ae2c90bf507', NULL, 'http-basic-authenticator', 'db90a8ec-006d-42ea-a943-6a4382f55821', '0a9a6e60-bb0d-4c27-aacd-222ca52ba737', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('195d2274-38fe-438d-9490-ec6f91f25d53', NULL, 'docker-http-basic-authenticator', 'db90a8ec-006d-42ea-a943-6a4382f55821', '8448c79d-a6a1-4981-9a32-99bdab8bbd9f', 0, 10, false, NULL, NULL);


--
-- TOC entry 4090 (class 0 OID 17022)
-- Dependencies: 256
-- Data for Name: authenticator_config; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.authenticator_config VALUES ('541893c2-2fba-458b-bc29-594d7de6fa46', 'review profile config', 'db90a8ec-006d-42ea-a943-6a4382f55821');
INSERT INTO public.authenticator_config VALUES ('78656842-ce4f-4290-95e7-83ad8c999de5', 'create unique user config', 'db90a8ec-006d-42ea-a943-6a4382f55821');


--
-- TOC entry 4093 (class 0 OID 17037)
-- Dependencies: 259
-- Data for Name: authenticator_config_entry; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.authenticator_config_entry VALUES ('541893c2-2fba-458b-bc29-594d7de6fa46', 'missing', 'update.profile.on.first.login');
INSERT INTO public.authenticator_config_entry VALUES ('78656842-ce4f-4290-95e7-83ad8c999de5', 'false', 'require.password.update.after.registration');


--
-- TOC entry 4119 (class 0 OID 17475)
-- Dependencies: 285
-- Data for Name: broker_link; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4050 (class 0 OID 16398)
-- Dependencies: 216
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.client VALUES ('95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, false, 'master-realm', 0, false, NULL, NULL, true, NULL, false, 'db90a8ec-006d-42ea-a943-6a4382f55821', NULL, 0, false, false, 'master Realm', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', true, false, 'account', 0, true, NULL, '/realms/master/account/', false, NULL, false, 'db90a8ec-006d-42ea-a943-6a4382f55821', 'openid-connect', 0, false, false, '${client_account}', false, 'client-secret', '${authBaseUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', true, false, 'account-console', 0, true, NULL, '/realms/master/account/', false, NULL, false, 'db90a8ec-006d-42ea-a943-6a4382f55821', 'openid-connect', 0, false, false, '${client_account-console}', false, 'client-secret', '${authBaseUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('65754012-a879-4325-8d11-bc3a3a9b450a', true, false, 'broker', 0, false, NULL, NULL, true, NULL, false, 'db90a8ec-006d-42ea-a943-6a4382f55821', 'openid-connect', 0, false, false, '${client_broker}', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', true, false, 'security-admin-console', 0, true, NULL, '/admin/master/console/', false, NULL, false, 'db90a8ec-006d-42ea-a943-6a4382f55821', 'openid-connect', 0, false, false, '${client_security-admin-console}', false, 'client-secret', '${authAdminUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('e6da7cf4-a105-46b2-8490-5d7f7e53bac8', true, false, 'admin-cli', 0, true, NULL, NULL, false, NULL, false, 'db90a8ec-006d-42ea-a943-6a4382f55821', 'openid-connect', 0, false, false, '${client_admin-cli}', false, 'client-secret', NULL, NULL, NULL, false, false, true, false);


--
-- TOC entry 4073 (class 0 OID 16756)
-- Dependencies: 239
-- Data for Name: client_attributes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.client_attributes VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', 'post.logout.redirect.uris', '+');
INSERT INTO public.client_attributes VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', 'post.logout.redirect.uris', '+');
INSERT INTO public.client_attributes VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', 'pkce.code.challenge.method', 'S256');
INSERT INTO public.client_attributes VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', 'post.logout.redirect.uris', '+');
INSERT INTO public.client_attributes VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', 'pkce.code.challenge.method', 'S256');


--
-- TOC entry 4130 (class 0 OID 17724)
-- Dependencies: 296
-- Data for Name: client_auth_flow_bindings; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4129 (class 0 OID 17599)
-- Dependencies: 295
-- Data for Name: client_initial_access; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4075 (class 0 OID 16766)
-- Dependencies: 241
-- Data for Name: client_node_registrations; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4107 (class 0 OID 17265)
-- Dependencies: 273
-- Data for Name: client_scope; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.client_scope VALUES ('afae0a48-6fed-487a-b8b2-8d5ee5f7f456', 'offline_access', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'OpenID Connect built-in scope: offline_access', 'openid-connect');
INSERT INTO public.client_scope VALUES ('17a14959-ad2f-49ed-9c9c-7352062d618c', 'role_list', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'SAML role list', 'saml');
INSERT INTO public.client_scope VALUES ('9782c473-56bf-40dc-9b79-eacb3d0ac1d1', 'profile', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'OpenID Connect built-in scope: profile', 'openid-connect');
INSERT INTO public.client_scope VALUES ('3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea', 'email', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'OpenID Connect built-in scope: email', 'openid-connect');
INSERT INTO public.client_scope VALUES ('93431f73-9803-4404-a566-dba079d3e527', 'address', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'OpenID Connect built-in scope: address', 'openid-connect');
INSERT INTO public.client_scope VALUES ('936d52e7-021f-4731-a35d-d61af1176f24', 'phone', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'OpenID Connect built-in scope: phone', 'openid-connect');
INSERT INTO public.client_scope VALUES ('6049de33-e5b2-4852-9b59-24c288bace86', 'roles', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'OpenID Connect scope for add user roles to the access token', 'openid-connect');
INSERT INTO public.client_scope VALUES ('6e470c9c-95b2-4ed1-98ce-c6dd5447b99d', 'web-origins', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'OpenID Connect scope for add allowed web origins to the access token', 'openid-connect');
INSERT INTO public.client_scope VALUES ('3f0102c3-c103-43ba-97d4-32415b030e25', 'microprofile-jwt', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'Microprofile - JWT built-in scope', 'openid-connect');
INSERT INTO public.client_scope VALUES ('3ba8719d-60bc-4769-bd22-f4fe3eae4012', 'acr', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'OpenID Connect scope for add acr (authentication context class reference) to the token', 'openid-connect');


--
-- TOC entry 4108 (class 0 OID 17279)
-- Dependencies: 274
-- Data for Name: client_scope_attributes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.client_scope_attributes VALUES ('afae0a48-6fed-487a-b8b2-8d5ee5f7f456', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('afae0a48-6fed-487a-b8b2-8d5ee5f7f456', '${offlineAccessScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('17a14959-ad2f-49ed-9c9c-7352062d618c', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('17a14959-ad2f-49ed-9c9c-7352062d618c', '${samlRoleListScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('9782c473-56bf-40dc-9b79-eacb3d0ac1d1', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('9782c473-56bf-40dc-9b79-eacb3d0ac1d1', '${profileScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('9782c473-56bf-40dc-9b79-eacb3d0ac1d1', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea', '${emailScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('93431f73-9803-4404-a566-dba079d3e527', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('93431f73-9803-4404-a566-dba079d3e527', '${addressScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('93431f73-9803-4404-a566-dba079d3e527', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('936d52e7-021f-4731-a35d-d61af1176f24', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('936d52e7-021f-4731-a35d-d61af1176f24', '${phoneScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('936d52e7-021f-4731-a35d-d61af1176f24', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('6049de33-e5b2-4852-9b59-24c288bace86', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('6049de33-e5b2-4852-9b59-24c288bace86', '${rolesScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('6049de33-e5b2-4852-9b59-24c288bace86', 'false', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('6e470c9c-95b2-4ed1-98ce-c6dd5447b99d', 'false', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('6e470c9c-95b2-4ed1-98ce-c6dd5447b99d', '', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('6e470c9c-95b2-4ed1-98ce-c6dd5447b99d', 'false', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('3f0102c3-c103-43ba-97d4-32415b030e25', 'false', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('3f0102c3-c103-43ba-97d4-32415b030e25', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('3ba8719d-60bc-4769-bd22-f4fe3eae4012', 'false', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('3ba8719d-60bc-4769-bd22-f4fe3eae4012', 'false', 'include.in.token.scope');


--
-- TOC entry 4131 (class 0 OID 17765)
-- Dependencies: 297
-- Data for Name: client_scope_client; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.client_scope_client VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', '3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea', true);
INSERT INTO public.client_scope_client VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', '6e470c9c-95b2-4ed1-98ce-c6dd5447b99d', true);
INSERT INTO public.client_scope_client VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', '9782c473-56bf-40dc-9b79-eacb3d0ac1d1', true);
INSERT INTO public.client_scope_client VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', '3ba8719d-60bc-4769-bd22-f4fe3eae4012', true);
INSERT INTO public.client_scope_client VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', '6049de33-e5b2-4852-9b59-24c288bace86', true);
INSERT INTO public.client_scope_client VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', 'afae0a48-6fed-487a-b8b2-8d5ee5f7f456', false);
INSERT INTO public.client_scope_client VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', '3f0102c3-c103-43ba-97d4-32415b030e25', false);
INSERT INTO public.client_scope_client VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', '936d52e7-021f-4731-a35d-d61af1176f24', false);
INSERT INTO public.client_scope_client VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', '93431f73-9803-4404-a566-dba079d3e527', false);
INSERT INTO public.client_scope_client VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', '3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea', true);
INSERT INTO public.client_scope_client VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', '6e470c9c-95b2-4ed1-98ce-c6dd5447b99d', true);
INSERT INTO public.client_scope_client VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', '9782c473-56bf-40dc-9b79-eacb3d0ac1d1', true);
INSERT INTO public.client_scope_client VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', '3ba8719d-60bc-4769-bd22-f4fe3eae4012', true);
INSERT INTO public.client_scope_client VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', '6049de33-e5b2-4852-9b59-24c288bace86', true);
INSERT INTO public.client_scope_client VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', 'afae0a48-6fed-487a-b8b2-8d5ee5f7f456', false);
INSERT INTO public.client_scope_client VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', '3f0102c3-c103-43ba-97d4-32415b030e25', false);
INSERT INTO public.client_scope_client VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', '936d52e7-021f-4731-a35d-d61af1176f24', false);
INSERT INTO public.client_scope_client VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', '93431f73-9803-4404-a566-dba079d3e527', false);
INSERT INTO public.client_scope_client VALUES ('e6da7cf4-a105-46b2-8490-5d7f7e53bac8', '3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea', true);
INSERT INTO public.client_scope_client VALUES ('e6da7cf4-a105-46b2-8490-5d7f7e53bac8', '6e470c9c-95b2-4ed1-98ce-c6dd5447b99d', true);
INSERT INTO public.client_scope_client VALUES ('e6da7cf4-a105-46b2-8490-5d7f7e53bac8', '9782c473-56bf-40dc-9b79-eacb3d0ac1d1', true);
INSERT INTO public.client_scope_client VALUES ('e6da7cf4-a105-46b2-8490-5d7f7e53bac8', '3ba8719d-60bc-4769-bd22-f4fe3eae4012', true);
INSERT INTO public.client_scope_client VALUES ('e6da7cf4-a105-46b2-8490-5d7f7e53bac8', '6049de33-e5b2-4852-9b59-24c288bace86', true);
INSERT INTO public.client_scope_client VALUES ('e6da7cf4-a105-46b2-8490-5d7f7e53bac8', 'afae0a48-6fed-487a-b8b2-8d5ee5f7f456', false);
INSERT INTO public.client_scope_client VALUES ('e6da7cf4-a105-46b2-8490-5d7f7e53bac8', '3f0102c3-c103-43ba-97d4-32415b030e25', false);
INSERT INTO public.client_scope_client VALUES ('e6da7cf4-a105-46b2-8490-5d7f7e53bac8', '936d52e7-021f-4731-a35d-d61af1176f24', false);
INSERT INTO public.client_scope_client VALUES ('e6da7cf4-a105-46b2-8490-5d7f7e53bac8', '93431f73-9803-4404-a566-dba079d3e527', false);
INSERT INTO public.client_scope_client VALUES ('65754012-a879-4325-8d11-bc3a3a9b450a', '3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea', true);
INSERT INTO public.client_scope_client VALUES ('65754012-a879-4325-8d11-bc3a3a9b450a', '6e470c9c-95b2-4ed1-98ce-c6dd5447b99d', true);
INSERT INTO public.client_scope_client VALUES ('65754012-a879-4325-8d11-bc3a3a9b450a', '9782c473-56bf-40dc-9b79-eacb3d0ac1d1', true);
INSERT INTO public.client_scope_client VALUES ('65754012-a879-4325-8d11-bc3a3a9b450a', '3ba8719d-60bc-4769-bd22-f4fe3eae4012', true);
INSERT INTO public.client_scope_client VALUES ('65754012-a879-4325-8d11-bc3a3a9b450a', '6049de33-e5b2-4852-9b59-24c288bace86', true);
INSERT INTO public.client_scope_client VALUES ('65754012-a879-4325-8d11-bc3a3a9b450a', 'afae0a48-6fed-487a-b8b2-8d5ee5f7f456', false);
INSERT INTO public.client_scope_client VALUES ('65754012-a879-4325-8d11-bc3a3a9b450a', '3f0102c3-c103-43ba-97d4-32415b030e25', false);
INSERT INTO public.client_scope_client VALUES ('65754012-a879-4325-8d11-bc3a3a9b450a', '936d52e7-021f-4731-a35d-d61af1176f24', false);
INSERT INTO public.client_scope_client VALUES ('65754012-a879-4325-8d11-bc3a3a9b450a', '93431f73-9803-4404-a566-dba079d3e527', false);
INSERT INTO public.client_scope_client VALUES ('95c7a7c2-327d-4b25-bddc-2367a5b89f06', '3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea', true);
INSERT INTO public.client_scope_client VALUES ('95c7a7c2-327d-4b25-bddc-2367a5b89f06', '6e470c9c-95b2-4ed1-98ce-c6dd5447b99d', true);
INSERT INTO public.client_scope_client VALUES ('95c7a7c2-327d-4b25-bddc-2367a5b89f06', '9782c473-56bf-40dc-9b79-eacb3d0ac1d1', true);
INSERT INTO public.client_scope_client VALUES ('95c7a7c2-327d-4b25-bddc-2367a5b89f06', '3ba8719d-60bc-4769-bd22-f4fe3eae4012', true);
INSERT INTO public.client_scope_client VALUES ('95c7a7c2-327d-4b25-bddc-2367a5b89f06', '6049de33-e5b2-4852-9b59-24c288bace86', true);
INSERT INTO public.client_scope_client VALUES ('95c7a7c2-327d-4b25-bddc-2367a5b89f06', 'afae0a48-6fed-487a-b8b2-8d5ee5f7f456', false);
INSERT INTO public.client_scope_client VALUES ('95c7a7c2-327d-4b25-bddc-2367a5b89f06', '3f0102c3-c103-43ba-97d4-32415b030e25', false);
INSERT INTO public.client_scope_client VALUES ('95c7a7c2-327d-4b25-bddc-2367a5b89f06', '936d52e7-021f-4731-a35d-d61af1176f24', false);
INSERT INTO public.client_scope_client VALUES ('95c7a7c2-327d-4b25-bddc-2367a5b89f06', '93431f73-9803-4404-a566-dba079d3e527', false);
INSERT INTO public.client_scope_client VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', '3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea', true);
INSERT INTO public.client_scope_client VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', '6e470c9c-95b2-4ed1-98ce-c6dd5447b99d', true);
INSERT INTO public.client_scope_client VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', '9782c473-56bf-40dc-9b79-eacb3d0ac1d1', true);
INSERT INTO public.client_scope_client VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', '3ba8719d-60bc-4769-bd22-f4fe3eae4012', true);
INSERT INTO public.client_scope_client VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', '6049de33-e5b2-4852-9b59-24c288bace86', true);
INSERT INTO public.client_scope_client VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', 'afae0a48-6fed-487a-b8b2-8d5ee5f7f456', false);
INSERT INTO public.client_scope_client VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', '3f0102c3-c103-43ba-97d4-32415b030e25', false);
INSERT INTO public.client_scope_client VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', '936d52e7-021f-4731-a35d-d61af1176f24', false);
INSERT INTO public.client_scope_client VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', '93431f73-9803-4404-a566-dba079d3e527', false);


--
-- TOC entry 4109 (class 0 OID 17284)
-- Dependencies: 275
-- Data for Name: client_scope_role_mapping; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.client_scope_role_mapping VALUES ('afae0a48-6fed-487a-b8b2-8d5ee5f7f456', 'ff1bb023-b585-4489-aa34-c23b7309220e');


--
-- TOC entry 4071 (class 0 OID 16522)
-- Dependencies: 237
-- Data for Name: user_session; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4051 (class 0 OID 16409)
-- Dependencies: 217
-- Data for Name: client_session; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4096 (class 0 OID 17055)
-- Dependencies: 262
-- Data for Name: client_session_auth_status; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4074 (class 0 OID 16761)
-- Dependencies: 240
-- Data for Name: client_session_note; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4088 (class 0 OID 16939)
-- Dependencies: 254
-- Data for Name: client_session_prot_mapper; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4052 (class 0 OID 16414)
-- Dependencies: 218
-- Data for Name: client_session_role; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4097 (class 0 OID 17136)
-- Dependencies: 263
-- Data for Name: client_user_session_note; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4127 (class 0 OID 17520)
-- Dependencies: 293
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.component VALUES ('3e85a758-369e-4534-939e-5432bf79eedc', 'Trusted Hosts', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'trusted-hosts', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'anonymous');
INSERT INTO public.component VALUES ('3e6d105b-3c8b-4d52-b259-5940b2550153', 'Consent Required', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'consent-required', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'anonymous');
INSERT INTO public.component VALUES ('8c1073dc-d87c-42df-8b8b-6403734af3f6', 'Full Scope Disabled', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'scope', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'anonymous');
INSERT INTO public.component VALUES ('28e02e99-3fba-40c8-a0f7-37b6b498af52', 'Max Clients Limit', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'max-clients', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'anonymous');
INSERT INTO public.component VALUES ('92302aa3-6802-46ef-8211-dcff47a8aa51', 'Allowed Protocol Mapper Types', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'anonymous');
INSERT INTO public.component VALUES ('2bf6bc44-9e07-4309-8993-918668948814', 'Allowed Client Scopes', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'anonymous');
INSERT INTO public.component VALUES ('03953246-866f-4c6d-ac4e-cf83e5594d2f', 'Allowed Protocol Mapper Types', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'authenticated');
INSERT INTO public.component VALUES ('347c9a20-5e6e-4afc-afb2-cf5cdb400dea', 'Allowed Client Scopes', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'authenticated');
INSERT INTO public.component VALUES ('ecbea973-f9a8-44f8-9bb2-2ff800202064', 'rsa-generated', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'rsa-generated', 'org.keycloak.keys.KeyProvider', 'db90a8ec-006d-42ea-a943-6a4382f55821', NULL);
INSERT INTO public.component VALUES ('28b010bd-cbae-4b9d-b48c-5f0700de64f8', 'rsa-enc-generated', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'rsa-enc-generated', 'org.keycloak.keys.KeyProvider', 'db90a8ec-006d-42ea-a943-6a4382f55821', NULL);
INSERT INTO public.component VALUES ('9cd213eb-d880-4b24-9243-5ab47cece68a', 'hmac-generated', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'hmac-generated', 'org.keycloak.keys.KeyProvider', 'db90a8ec-006d-42ea-a943-6a4382f55821', NULL);
INSERT INTO public.component VALUES ('1558fe57-90c3-4161-81f2-788ce8411fd7', 'aes-generated', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'aes-generated', 'org.keycloak.keys.KeyProvider', 'db90a8ec-006d-42ea-a943-6a4382f55821', NULL);


--
-- TOC entry 4126 (class 0 OID 17515)
-- Dependencies: 292
-- Data for Name: component_config; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.component_config VALUES ('cb75e919-b6d8-42ad-918e-b82a90ef4679', '347c9a20-5e6e-4afc-afb2-cf5cdb400dea', 'allow-default-scopes', 'true');
INSERT INTO public.component_config VALUES ('b7ef95ac-d4e3-4310-8642-908508da4df4', '3e85a758-369e-4534-939e-5432bf79eedc', 'client-uris-must-match', 'true');
INSERT INTO public.component_config VALUES ('b8bdf1b0-1e10-4a41-9b74-3db14f0e2a01', '3e85a758-369e-4534-939e-5432bf79eedc', 'host-sending-registration-request-must-match', 'true');
INSERT INTO public.component_config VALUES ('e235f22a-df99-46d0-ac11-f17a2cf67c0f', '92302aa3-6802-46ef-8211-dcff47a8aa51', 'allowed-protocol-mapper-types', 'saml-user-property-mapper');
INSERT INTO public.component_config VALUES ('55a17b94-6394-487f-a001-099b74b4cac9', '92302aa3-6802-46ef-8211-dcff47a8aa51', 'allowed-protocol-mapper-types', 'saml-role-list-mapper');
INSERT INTO public.component_config VALUES ('a03c63b8-dc9f-430f-b3e2-ccd313c2735b', '92302aa3-6802-46ef-8211-dcff47a8aa51', 'allowed-protocol-mapper-types', 'oidc-address-mapper');
INSERT INTO public.component_config VALUES ('51b327e5-db90-47b3-9a50-b2a58b020b05', '92302aa3-6802-46ef-8211-dcff47a8aa51', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper');
INSERT INTO public.component_config VALUES ('03f065a5-9623-460d-a363-f2a9a04ab416', '92302aa3-6802-46ef-8211-dcff47a8aa51', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper');
INSERT INTO public.component_config VALUES ('e94dca13-16a7-46ca-90ec-63d6e9b70cf2', '92302aa3-6802-46ef-8211-dcff47a8aa51', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper');
INSERT INTO public.component_config VALUES ('c5d9a3a7-887d-42d9-b666-b4cb2e829f7e', '92302aa3-6802-46ef-8211-dcff47a8aa51', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper');
INSERT INTO public.component_config VALUES ('4be253e5-623f-4503-9e06-2c5912c0f02a', '92302aa3-6802-46ef-8211-dcff47a8aa51', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper');
INSERT INTO public.component_config VALUES ('d96c4246-00e6-4a15-b993-86392d8be0b5', '03953246-866f-4c6d-ac4e-cf83e5594d2f', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper');
INSERT INTO public.component_config VALUES ('06ad555b-8381-468b-a5de-2fe0f03efba0', '03953246-866f-4c6d-ac4e-cf83e5594d2f', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper');
INSERT INTO public.component_config VALUES ('f4b9fba3-b18b-48b5-80fb-9ca82e85e52b', '03953246-866f-4c6d-ac4e-cf83e5594d2f', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper');
INSERT INTO public.component_config VALUES ('2a33399e-348b-46d8-94d2-245cdff926b3', '03953246-866f-4c6d-ac4e-cf83e5594d2f', 'allowed-protocol-mapper-types', 'saml-user-property-mapper');
INSERT INTO public.component_config VALUES ('d4436177-d916-4067-a608-907dd93bdf43', '03953246-866f-4c6d-ac4e-cf83e5594d2f', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper');
INSERT INTO public.component_config VALUES ('a4799333-3dc8-49cb-89a1-38a5009b2930', '03953246-866f-4c6d-ac4e-cf83e5594d2f', 'allowed-protocol-mapper-types', 'oidc-address-mapper');
INSERT INTO public.component_config VALUES ('2481edab-a921-4b6b-a9c9-87836bb0dbf4', '03953246-866f-4c6d-ac4e-cf83e5594d2f', 'allowed-protocol-mapper-types', 'saml-role-list-mapper');
INSERT INTO public.component_config VALUES ('73f29ae2-a6b6-4143-8a37-16c2fd2750e8', '03953246-866f-4c6d-ac4e-cf83e5594d2f', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper');
INSERT INTO public.component_config VALUES ('2e5e9113-a8ba-4a27-a1f5-c525f82572a4', '2bf6bc44-9e07-4309-8993-918668948814', 'allow-default-scopes', 'true');
INSERT INTO public.component_config VALUES ('ec710788-70f9-4c48-9c6d-782a46be2f81', '28e02e99-3fba-40c8-a0f7-37b6b498af52', 'max-clients', '200');
INSERT INTO public.component_config VALUES ('a2a8cf92-4e67-4bc4-a2cd-12223ec7faff', 'ecbea973-f9a8-44f8-9bb2-2ff800202064', 'keyUse', 'SIG');
INSERT INTO public.component_config VALUES ('bfa6ce8d-aa0e-4ef6-b250-3cf3fc7d36ea', 'ecbea973-f9a8-44f8-9bb2-2ff800202064', 'privateKey', 'MIIEowIBAAKCAQEAjLrgPjh6+zU8NRSxXd3LHAPSvr5uoeHN3Emib/ie1bgMe0XIxNKGqhlNiQ1uXCpM2SSNsnF0Rm4Ywki5ms5lbRimgaJqWcROd/5/70ELxFl+6kTTZz+K2vAJ5GJtyLa8oyMEkqayeR99mm8tDa3085kaJZhJzFZGCcwAB57RAnld6GUXlwuzAIqI5Yzsw1qAdvxE04ZEpa6gW2lZkNa50jAcE9xEPjpTbRuFIQeUnokIE5+QbIujEaZR6rdN6U7bwdrBVMruZpB3jBgCu5vnyF5Fn4IcxZEzEZd12UwTGo1hx59k8rMNErmP8HYeeR9tBFZ0bfnUtWEXtkKhvJauQQIDAQABAoIBAALej5JtM+K52eWqK5iinFDQqiQd/WL7F+exL6jxTInGhCiiSl7q/PhsZiaQecrSyPjXdDUqd4i1F3ekpHYp1asVCNYVUe5NIJ11OLYP4TXKblpH93iANOxUXxtDP4JLaYq4/M+hqvtpvzWeJTDFdnxeB4izM3QBYVGzUV/WZuQSPi/V0IooT4F7X/hBzjb+A0CsTbqYPcx3lBraIZ0CYQCMnHF7J6VLw3ohJ2Kd6R8BC25xNaEBy/bXgFAeL9Hsa2NCaQhWaeYRA/xQERvNConMIzrWQpZQ+lQ48BDwuc0fw+HS+Q5k8060RPcmxwfutJVnvJ6zYWPMjobZ3/lrMfECgYEAw3pr95HtV/rF5qOUN8JHdFgFgka0JonzpVg2UiIoXANHm1AANzlVTLi2s9WVWtBG2bo47hMMfzs8ZBkVvuUydVad6jJxILjQl0PmMf1hDeMYoGDmwqyq/YnaAgch+Xi6nBQPygwcd0+ZxkKc1liQabOyp1S+xgrnX8qPHvhG/jkCgYEAuE0d4nrfrWTpL+gRPBuEUg9vYQHJX4qJG5g0O6i7S8P3Zltt3hdaB6KZf95tiM0gC0rcliSJ7ANYm/Fu/kFrOVCxyt+YW3PQDgHHT70Zf71jt+22tvOTj97DMUUa3v0+GrLGRsY1s8NNEG99k0hQdW2aXGm+FM9dchtsd74ZsEkCgYEAiTkJTdO834QFJPEz/Sh+7KdVxqxHjr5MsYeJKoMb/eu3esngPOQcgy0v5HJM1GFdOz7E9CufHDnDHSmW4FkY4NIbLOqYC7Zxh558nB8Y4JzJDty3YXXA2xbIWaAUM4KSzTowE1AJM6BHfKwKWVX2mp0xDtIo0fGZlt8lNUJo49ECgYA9YZm5a1kBw+ESDoVm8ncwaWmb8l9iDZ66bQfAcuLmSf8kvQCrfjWC43miJ69tZ3vrpuQusT6qNzcUwOVJkvomHaUJP0zb8Idzks4R1ZYfgDEs+ePnrNoRiYyS5UQczlUXyUDWI3+RPlN1TNyS5/u8EGPfsWwYPDQQI+gNPWgK2QKBgHUjQWotI5GcskMaQIacOGVSYiIQzEDUYr8h3QxJbyVF3F7VhpFDUZo2ssVTrUcUjZ93oruFdKxqOmqBmmX9LIOsN+LhOkhDPUokuMtbooT9liMiHGeztZHAD0PHi2OFL4dSdl68z5arg3x38jDPlFis6zHiFBCDXsKkYyCZnmdO');
INSERT INTO public.component_config VALUES ('93d2886d-9a73-4ab0-84cc-ae516dd35ec9', 'ecbea973-f9a8-44f8-9bb2-2ff800202064', 'certificate', 'MIICmzCCAYMCBgGN6Xn0wTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwMjI3MDczMDAwWhcNMzQwMjI3MDczMTQwWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCMuuA+OHr7NTw1FLFd3cscA9K+vm6h4c3cSaJv+J7VuAx7RcjE0oaqGU2JDW5cKkzZJI2ycXRGbhjCSLmazmVtGKaBompZxE53/n/vQQvEWX7qRNNnP4ra8AnkYm3ItryjIwSSprJ5H32aby0NrfTzmRolmEnMVkYJzAAHntECeV3oZReXC7MAiojljOzDWoB2/ETThkSlrqBbaVmQ1rnSMBwT3EQ+OlNtG4UhB5SeiQgTn5Bsi6MRplHqt03pTtvB2sFUyu5mkHeMGAK7m+fIXkWfghzFkTMRl3XZTBMajWHHn2Tysw0SuY/wdh55H20EVnRt+dS1YRe2QqG8lq5BAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAAvsqX61Y9eV7qwUtMWmbZuMDMiA0X9+2fBsCvwHwOSaV9b2RkLsc6NHV88hU1H95kQIJSNsM3TMuka+8c7fhB6KIzsDL1gajJQyAgR4p5eD2fcHLW41lEERP3Xjg7y+6lI6vj3zrEuHw9sQx7FczvLIiS0Og3RYipQogyHWYGMg+Cehhdza6OVI9/y8oQrOkTMfXmJjTgupfZcSwC/ePtE0JBowgR9TQyN35+ei+esTx56RAWELuITFKreCGXhTg8klULu37avjvnbjJKk0IEl9bJO/d7EOKtu0JUpsGGFIk99v/JOhOUvA85THeou9Ljh8RWdjnnoUa6tC8GHxfYg=');
INSERT INTO public.component_config VALUES ('2b1dddb0-0c01-49b6-8e0d-8941ed1cee3c', 'ecbea973-f9a8-44f8-9bb2-2ff800202064', 'priority', '100');
INSERT INTO public.component_config VALUES ('6080b493-8d45-4cb0-8f31-be83151d3f83', '1558fe57-90c3-4161-81f2-788ce8411fd7', 'kid', '24679e5e-9390-4f2e-bb5b-cab6112b43fe');
INSERT INTO public.component_config VALUES ('64c964b2-e828-4df1-b6cc-115dfcda0fd3', '1558fe57-90c3-4161-81f2-788ce8411fd7', 'priority', '100');
INSERT INTO public.component_config VALUES ('7a4e626c-1846-4e96-9070-c248d243a33b', '1558fe57-90c3-4161-81f2-788ce8411fd7', 'secret', 'skPnY9Ul0e65-t4SxlH9JQ');
INSERT INTO public.component_config VALUES ('d5fd273b-06b3-4bfe-8460-667f2c50789c', '28b010bd-cbae-4b9d-b48c-5f0700de64f8', 'algorithm', 'RSA-OAEP');
INSERT INTO public.component_config VALUES ('7c1cc105-213e-4a26-9910-36d57b65e546', '28b010bd-cbae-4b9d-b48c-5f0700de64f8', 'privateKey', 'MIIEowIBAAKCAQEAwO0ZL47JZGwNMPwpx7/RuXjhTFOCv8dXbSUmmNgGEntA03F1iXCzmKNXoP36qDmhV7EKRtq7lE7iDArZl8aJPC4YBJkvJyvw9/ZKxtJrlhG7OB1YPyeYo3HgmKbpD8Zb58dqIA4bioh+AMT+sH+coR52kek+rSGnIWpzkt6qKhclp0gEvX8YmjfOrRTglZufceyg9Xm/LfR0lxloT8MMbM97b5kH6L7WNkFj3qVKX8ggdBu1sT537nMake4H91w05gRPQ5QF+FICKFppqNDQaq8ZdnQdkjsut3gUQPG9Vis5IsQfKtzUzEu+BIIjDw93/8PWt0Q1bc5KhTaQeJEWCwIDAQABAoIBAAE6QPvFe9CQw3C5Wga0WMBGXaCfs2hG+25tWxaD4V4CvMHbqfTK68mf2HHky9CANV+ad8dFowXpjpSnCQVnNP5WCL8Wvm8QX4MkZQto0VhuGnPb8/DK7rSzh8tQ3JDGIVWTNkCn9lLmVW7p0fkLhtKboAODqWtumGKlC8E2e3yzECzGqEHansaHlI1VqNnIDepuT/YH1RP7ac6AmMlIlYdWl/k0dX2BK6aLtb5v2Sfwc1rFRkKXfH9Qj36kTMw2a4Ls9f5xDEKi8LHXmeLahfRhMl9v3LdHzCqZluK5dfsdQ8pLRNrCHs7dbl9Ubf6h+rcWHpXWCsIdlshLBnQO7iECgYEA5o+673Ey10ax5mrizQtaCPWpZ69+bxiW/pycrY1cpepaBN9/aI9LSqEqcQtnyyKlHB47bFV47UrkGBtkCsvZtEMBhmXwqILgR0/lMwaWbgfiiNPNk9DVMNb64dj9rgfcnojlQ8DifwSKR65dAfBs2dNY7sKQiImxNKJwXkNn8psCgYEA1jZZfpOWJtYRNuQjOo85yvvQy8l8Kr+655p4QUdkD2HYuZpFZaoU6HTx76pb1BazuBMwE2qpP0AR46S1ToFSyXrRG38SDTr/9BKY/KWpAXKq87MU8qV1EKoARnjuGgDNvd1dOyrCvE/liYOyIRTUIYJ3YsPRZFpihRNkIFpfqVECgYAgPidpRs5SVruYOohfHmBH8nrvWhZ3WNv83U/34VX8iepu1gaOS8O+uw0hY/Pu73hhl0S+ILHZlWiSinoSHHHkiJ5U+jqOhkbxEhY+bYRp/MZMVjpgmorF2rqZDOxlAwpyTTiqofXKx4rC/XpaRBIk4C6GrUTjI0ZZ0wGd3RVTUwKBgBMSdbdiVo0QpCm5+DT/iYq8DuQGBWsc9Pwn8asGOy9va8dip+kcUo4700qeZVylxMyP0Mj5xyXdg3o8MPRTaVaM+88x6h6JcT5+5WYhLcH2PqhB+ox8FMcuC6Y6oCBqj+bmraVV8k6n4mzy78ooO5bcMdr2Sk9gCMOGbXS/9yJxAoGBALJBY4R7u9G6981kAw+3uIArEvt2jpD+L43kykCi6mFIIqnWgcm63mTRR7SRYpwU4gKuE4WR2KsO/wcX43o/dvrBi4KZPIoQSCGxOfbnfmBYadSk+S3Kvf/FzHUSn09D+dQNTq6+pRqI3zvkNieCbc1yeaoNO6MH5a5EL7xQbqXj');
INSERT INTO public.component_config VALUES ('6f2b3452-e053-4a6d-8ed3-1151b3719479', '28b010bd-cbae-4b9d-b48c-5f0700de64f8', 'certificate', 'MIICmzCCAYMCBgGN6Xn13TANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjQwMjI3MDczMDAwWhcNMzQwMjI3MDczMTQwWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDA7RkvjslkbA0w/CnHv9G5eOFMU4K/x1dtJSaY2AYSe0DTcXWJcLOYo1eg/fqoOaFXsQpG2ruUTuIMCtmXxok8LhgEmS8nK/D39krG0muWEbs4HVg/J5ijceCYpukPxlvnx2ogDhuKiH4AxP6wf5yhHnaR6T6tIachanOS3qoqFyWnSAS9fxiaN86tFOCVm59x7KD1eb8t9HSXGWhPwwxsz3tvmQfovtY2QWPepUpfyCB0G7WxPnfucxqR7gf3XDTmBE9DlAX4UgIoWmmo0NBqrxl2dB2SOy63eBRA8b1WKzkixB8q3NTMS74EgiMPD3f/w9a3RDVtzkqFNpB4kRYLAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHQAgoea3z3dyorjZUqiHEE1n9ZPoi9d5wh2twtwjP04zY5sivKK9HrT9xyxPYMoFe7NqipJTP9HZDqUt4DUGViBj9hXVZpFHGO/XjTfI3FTx5HR6c47Rt9qyEQmJywhJt2L64IdQdbuWse2rZkUPuKjVjQgnq/i+GmE47qQdi3qF5iak8IzKahpfM+JS0HQz6Iua1dTFWQAlJMhQ+PzHIzNyueWTamp/uU4P67PBLEPAH/XAdwXsYKUQZCABoQeWs+rHyGeX21P3vee/SkFYoQvnhFKe2qHTZcL0gkZj6H9YooBrfIPfRRXpVmvdaERNr4CNp3pFe6Q2nx/CxQqLyg=');
INSERT INTO public.component_config VALUES ('2083adb6-1150-4ffc-bb93-91f128908c98', '28b010bd-cbae-4b9d-b48c-5f0700de64f8', 'priority', '100');
INSERT INTO public.component_config VALUES ('e85147f5-7a0b-475a-b4fb-05aaf679efd6', '28b010bd-cbae-4b9d-b48c-5f0700de64f8', 'keyUse', 'ENC');
INSERT INTO public.component_config VALUES ('e41b3809-ce93-4e7d-8944-b1d07a04659e', '9cd213eb-d880-4b24-9243-5ab47cece68a', 'kid', 'cfb966e0-6d58-422a-947b-9e2432990343');
INSERT INTO public.component_config VALUES ('960daad1-3158-4523-b251-9aa0e9867205', '9cd213eb-d880-4b24-9243-5ab47cece68a', 'secret', '918w7Qom4boV5XGINOnC6ejlSrtmI5tDK2Moz2GVa5vR0O0EUuWcLmXoOYMBpEXa3tpmwzSVXi-p15N151J4qw');
INSERT INTO public.component_config VALUES ('a4f7185d-1f38-42cc-8ba4-751d996fb0ee', '9cd213eb-d880-4b24-9243-5ab47cece68a', 'priority', '100');
INSERT INTO public.component_config VALUES ('6b8077b4-c31c-4a16-8322-291c6da6e881', '9cd213eb-d880-4b24-9243-5ab47cece68a', 'algorithm', 'HS256');


--
-- TOC entry 4056 (class 0 OID 16433)
-- Dependencies: 222
-- Data for Name: keycloak_role; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.keycloak_role VALUES ('5b626b3a-0e8d-4fd3-8027-a7d3542883fa', 'db90a8ec-006d-42ea-a943-6a4382f55821', false, '${role_default-roles}', 'default-roles-master', 'db90a8ec-006d-42ea-a943-6a4382f55821', NULL, NULL);
INSERT INTO public.keycloak_role VALUES ('6d1de684-3914-478f-be26-3ca0a23782d6', 'db90a8ec-006d-42ea-a943-6a4382f55821', false, '${role_create-realm}', 'create-realm', 'db90a8ec-006d-42ea-a943-6a4382f55821', NULL, NULL);
INSERT INTO public.keycloak_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', 'db90a8ec-006d-42ea-a943-6a4382f55821', false, '${role_admin}', 'admin', 'db90a8ec-006d-42ea-a943-6a4382f55821', NULL, NULL);
INSERT INTO public.keycloak_role VALUES ('e30e0df6-bf6c-4fa4-9eaf-0a6dd7c1d409', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_create-client}', 'create-client', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('2b28fc76-224c-4688-9bb2-e147f058d57f', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_view-realm}', 'view-realm', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('dfb41a6a-4d42-4ef3-8eff-e7009ea093ed', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_view-users}', 'view-users', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('6b252dd8-c996-46ca-9f9f-f19e68afaa9c', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_view-clients}', 'view-clients', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('326f2703-1a59-4aec-af69-91ed0aae3a39', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_view-events}', 'view-events', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('c7d9a560-6bfc-4d6e-9be0-a56a9b0d1561', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_view-identity-providers}', 'view-identity-providers', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('dbb0ca4a-3364-4d96-b8be-48ead7e6ffd3', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_view-authorization}', 'view-authorization', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('0f01245c-2b9d-44e2-bc75-69d5d03e27ff', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_manage-realm}', 'manage-realm', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('b16f23c2-b938-4a1d-9f0f-17af8f15ade4', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_manage-users}', 'manage-users', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('e3ca2461-aa30-4c63-b61c-aab300ade5c6', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_manage-clients}', 'manage-clients', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('51c377e8-8843-408d-a85a-c0b44321f17c', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_manage-events}', 'manage-events', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('73e3f897-5e61-431d-b867-bc624fe35f22', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_manage-identity-providers}', 'manage-identity-providers', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('290c98e0-3ca3-43c1-975e-2a739fc2f22f', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_manage-authorization}', 'manage-authorization', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('807b4b92-9ba6-45ce-9eac-a5cacb34dc73', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_query-users}', 'query-users', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('c0b4a51e-af5d-4f5a-83b3-93483c3f2971', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_query-clients}', 'query-clients', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('28868f28-4ea1-479b-962d-ddc58d796d72', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_query-realms}', 'query-realms', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('fd691049-c052-42c9-8af7-70a13e49731b', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_query-groups}', 'query-groups', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('4a5548ef-42ba-4176-a823-bd4c982282c6', '61baa44c-bb06-4b50-9e15-521857c17124', true, '${role_view-profile}', 'view-profile', 'db90a8ec-006d-42ea-a943-6a4382f55821', '61baa44c-bb06-4b50-9e15-521857c17124', NULL);
INSERT INTO public.keycloak_role VALUES ('5f88b600-062e-446b-b64c-3e2b7b599784', '61baa44c-bb06-4b50-9e15-521857c17124', true, '${role_manage-account}', 'manage-account', 'db90a8ec-006d-42ea-a943-6a4382f55821', '61baa44c-bb06-4b50-9e15-521857c17124', NULL);
INSERT INTO public.keycloak_role VALUES ('85b67b69-8499-472f-ae63-2c874977fd40', '61baa44c-bb06-4b50-9e15-521857c17124', true, '${role_manage-account-links}', 'manage-account-links', 'db90a8ec-006d-42ea-a943-6a4382f55821', '61baa44c-bb06-4b50-9e15-521857c17124', NULL);
INSERT INTO public.keycloak_role VALUES ('7f4cfbc1-5b4b-4fbe-b3f6-c1a86e77a78f', '61baa44c-bb06-4b50-9e15-521857c17124', true, '${role_view-applications}', 'view-applications', 'db90a8ec-006d-42ea-a943-6a4382f55821', '61baa44c-bb06-4b50-9e15-521857c17124', NULL);
INSERT INTO public.keycloak_role VALUES ('8d84c03b-a8d9-4a28-9f20-f96d948c2d3c', '61baa44c-bb06-4b50-9e15-521857c17124', true, '${role_view-consent}', 'view-consent', 'db90a8ec-006d-42ea-a943-6a4382f55821', '61baa44c-bb06-4b50-9e15-521857c17124', NULL);
INSERT INTO public.keycloak_role VALUES ('0550e030-cd91-438b-b2f8-f7cf341efd7d', '61baa44c-bb06-4b50-9e15-521857c17124', true, '${role_manage-consent}', 'manage-consent', 'db90a8ec-006d-42ea-a943-6a4382f55821', '61baa44c-bb06-4b50-9e15-521857c17124', NULL);
INSERT INTO public.keycloak_role VALUES ('29bd82e8-81a2-41a3-945b-24d52d0ff7fb', '61baa44c-bb06-4b50-9e15-521857c17124', true, '${role_view-groups}', 'view-groups', 'db90a8ec-006d-42ea-a943-6a4382f55821', '61baa44c-bb06-4b50-9e15-521857c17124', NULL);
INSERT INTO public.keycloak_role VALUES ('c8e9965a-9127-4548-ab38-7120503d1a4e', '61baa44c-bb06-4b50-9e15-521857c17124', true, '${role_delete-account}', 'delete-account', 'db90a8ec-006d-42ea-a943-6a4382f55821', '61baa44c-bb06-4b50-9e15-521857c17124', NULL);
INSERT INTO public.keycloak_role VALUES ('8582e866-5ea2-40dc-b1b0-971ff4f78785', '65754012-a879-4325-8d11-bc3a3a9b450a', true, '${role_read-token}', 'read-token', 'db90a8ec-006d-42ea-a943-6a4382f55821', '65754012-a879-4325-8d11-bc3a3a9b450a', NULL);
INSERT INTO public.keycloak_role VALUES ('9c5f3546-1a4e-4ff2-afce-7acaf2da9e5c', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', true, '${role_impersonation}', 'impersonation', 'db90a8ec-006d-42ea-a943-6a4382f55821', '95c7a7c2-327d-4b25-bddc-2367a5b89f06', NULL);
INSERT INTO public.keycloak_role VALUES ('ff1bb023-b585-4489-aa34-c23b7309220e', 'db90a8ec-006d-42ea-a943-6a4382f55821', false, '${role_offline-access}', 'offline_access', 'db90a8ec-006d-42ea-a943-6a4382f55821', NULL, NULL);
INSERT INTO public.keycloak_role VALUES ('52feea12-e0c1-49ae-901b-1dd1525586ce', 'db90a8ec-006d-42ea-a943-6a4382f55821', false, '${role_uma_authorization}', 'uma_authorization', 'db90a8ec-006d-42ea-a943-6a4382f55821', NULL, NULL);


--
-- TOC entry 4053 (class 0 OID 16417)
-- Dependencies: 219
-- Data for Name: composite_role; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '6d1de684-3914-478f-be26-3ca0a23782d6');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', 'e30e0df6-bf6c-4fa4-9eaf-0a6dd7c1d409');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '2b28fc76-224c-4688-9bb2-e147f058d57f');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', 'dfb41a6a-4d42-4ef3-8eff-e7009ea093ed');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '6b252dd8-c996-46ca-9f9f-f19e68afaa9c');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '326f2703-1a59-4aec-af69-91ed0aae3a39');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', 'c7d9a560-6bfc-4d6e-9be0-a56a9b0d1561');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', 'dbb0ca4a-3364-4d96-b8be-48ead7e6ffd3');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '0f01245c-2b9d-44e2-bc75-69d5d03e27ff');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', 'b16f23c2-b938-4a1d-9f0f-17af8f15ade4');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', 'e3ca2461-aa30-4c63-b61c-aab300ade5c6');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '51c377e8-8843-408d-a85a-c0b44321f17c');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '73e3f897-5e61-431d-b867-bc624fe35f22');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '290c98e0-3ca3-43c1-975e-2a739fc2f22f');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '807b4b92-9ba6-45ce-9eac-a5cacb34dc73');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', 'c0b4a51e-af5d-4f5a-83b3-93483c3f2971');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '28868f28-4ea1-479b-962d-ddc58d796d72');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', 'fd691049-c052-42c9-8af7-70a13e49731b');
INSERT INTO public.composite_role VALUES ('5b626b3a-0e8d-4fd3-8027-a7d3542883fa', '4a5548ef-42ba-4176-a823-bd4c982282c6');
INSERT INTO public.composite_role VALUES ('6b252dd8-c996-46ca-9f9f-f19e68afaa9c', 'c0b4a51e-af5d-4f5a-83b3-93483c3f2971');
INSERT INTO public.composite_role VALUES ('dfb41a6a-4d42-4ef3-8eff-e7009ea093ed', 'fd691049-c052-42c9-8af7-70a13e49731b');
INSERT INTO public.composite_role VALUES ('dfb41a6a-4d42-4ef3-8eff-e7009ea093ed', '807b4b92-9ba6-45ce-9eac-a5cacb34dc73');
INSERT INTO public.composite_role VALUES ('5b626b3a-0e8d-4fd3-8027-a7d3542883fa', '5f88b600-062e-446b-b64c-3e2b7b599784');
INSERT INTO public.composite_role VALUES ('5f88b600-062e-446b-b64c-3e2b7b599784', '85b67b69-8499-472f-ae63-2c874977fd40');
INSERT INTO public.composite_role VALUES ('0550e030-cd91-438b-b2f8-f7cf341efd7d', '8d84c03b-a8d9-4a28-9f20-f96d948c2d3c');
INSERT INTO public.composite_role VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '9c5f3546-1a4e-4ff2-afce-7acaf2da9e5c');
INSERT INTO public.composite_role VALUES ('5b626b3a-0e8d-4fd3-8027-a7d3542883fa', 'ff1bb023-b585-4489-aa34-c23b7309220e');
INSERT INTO public.composite_role VALUES ('5b626b3a-0e8d-4fd3-8027-a7d3542883fa', '52feea12-e0c1-49ae-901b-1dd1525586ce');


--
-- TOC entry 4066 (class 0 OID 16498)
-- Dependencies: 232
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.user_entity VALUES ('0b10f923-a26c-4611-ac12-a34e53120978', NULL, '7e1218b4-132e-46f4-a4bd-11429f98a160', false, true, NULL, NULL, NULL, 'db90a8ec-006d-42ea-a943-6a4382f55821', 'user', 1709019100943, NULL, 0);


--
-- TOC entry 4054 (class 0 OID 16420)
-- Dependencies: 220
-- Data for Name: credential; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.credential VALUES ('2470d0ac-a5b8-439c-b759-7fea60d7aad8', NULL, 'password', '0b10f923-a26c-4611-ac12-a34e53120978', 1709019101025, NULL, '{"value":"3txRa4ffJK/Pae6lNXbeTxuIV7RTDxmwzbDH8otiP40=","salt":"YyDj81Uk4TbZhxbGosD+ug==","additionalParameters":{}}', '{"hashIterations":27500,"algorithm":"pbkdf2-sha256","additionalParameters":{}}', 10);


--
-- TOC entry 4049 (class 0 OID 16390)
-- Dependencies: 215
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.databasechangelog VALUES ('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.0.0.Final.xml', '2024-02-27 07:31:37.271171', 1, 'EXECUTED', '9:6f1016664e21e16d26517a4418f5e3df', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/db2-jpa-changelog-1.0.0.Final.xml', '2024-02-27 07:31:37.307552', 2, 'MARK_RAN', '9:828775b1596a07d1200ba1d49e5e3941', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.1.0.Beta1', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Beta1.xml', '2024-02-27 07:31:37.358942', 3, 'EXECUTED', '9:5f090e44a7d595883c1fb61f4b41fd38', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.1.0.Final', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Final.xml', '2024-02-27 07:31:37.364554', 4, 'EXECUTED', '9:c07e577387a3d2c04d1adc9aaad8730e', 'renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/jpa-changelog-1.2.0.Beta1.xml', '2024-02-27 07:31:37.467904', 5, 'EXECUTED', '9:b68ce996c655922dbcd2fe6b6ae72686', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.Beta1.xml', '2024-02-27 07:31:37.482657', 6, 'MARK_RAN', '9:543b5c9989f024fe35c6f6c5a97de88e', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.2.0.CR1.xml', '2024-02-27 07:31:37.58255', 7, 'EXECUTED', '9:765afebbe21cf5bbca048e632df38336', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.CR1.xml', '2024-02-27 07:31:37.601553', 8, 'MARK_RAN', '9:db4a145ba11a6fdaefb397f6dbf829a1', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.2.0.Final', 'keycloak', 'META-INF/jpa-changelog-1.2.0.Final.xml', '2024-02-27 07:31:37.610894', 9, 'EXECUTED', '9:9d05c7be10cdb873f8bcb41bc3a8ab23', 'update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.3.0.xml', '2024-02-27 07:31:37.721903', 10, 'EXECUTED', '9:18593702353128d53111f9b1ff0b82b8', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.4.0.xml', '2024-02-27 07:31:37.787551', 11, 'EXECUTED', '9:6122efe5f090e41a85c0f1c9e52cbb62', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.4.0', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.4.0.xml', '2024-02-27 07:31:37.797713', 12, 'MARK_RAN', '9:e1ff28bf7568451453f844c5d54bb0b5', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.5.0.xml', '2024-02-27 07:31:37.815624', 13, 'EXECUTED', '9:7af32cd8957fbc069f796b61217483fd', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.6.1_from15', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2024-02-27 07:31:37.844219', 14, 'EXECUTED', '9:6005e15e84714cd83226bf7879f54190', 'addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.6.1_from16-pre', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2024-02-27 07:31:37.846428', 15, 'MARK_RAN', '9:bf656f5a2b055d07f314431cae76f06c', 'delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.6.1_from16', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2024-02-27 07:31:37.849946', 16, 'MARK_RAN', '9:f8dadc9284440469dcf71e25ca6ab99b', 'dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.6.1', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2024-02-27 07:31:37.853345', 17, 'EXECUTED', '9:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.7.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.7.0.xml', '2024-02-27 07:31:37.898072', 18, 'EXECUTED', '9:3368ff0be4c2855ee2dd9ca813b38d8e', 'createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.8.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.8.0.xml', '2024-02-27 07:31:37.94648', 19, 'EXECUTED', '9:8ac2fb5dd030b24c0570a763ed75ed20', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.8.0-2', 'keycloak', 'META-INF/jpa-changelog-1.8.0.xml', '2024-02-27 07:31:37.952015', 20, 'EXECUTED', '9:f91ddca9b19743db60e3057679810e6c', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.8.0', 'mposolda@redhat.com', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2024-02-27 07:31:37.960884', 21, 'MARK_RAN', '9:831e82914316dc8a57dc09d755f23c51', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.8.0-2', 'keycloak', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2024-02-27 07:31:37.964633', 22, 'MARK_RAN', '9:f91ddca9b19743db60e3057679810e6c', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.9.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.9.0.xml', '2024-02-27 07:31:37.988026', 23, 'EXECUTED', '9:bc3d0f9e823a69dc21e23e94c7a94bb1', 'update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.9.1', 'keycloak', 'META-INF/jpa-changelog-1.9.1.xml', '2024-02-27 07:31:37.99403', 24, 'EXECUTED', '9:c9999da42f543575ab790e76439a2679', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.9.1', 'keycloak', 'META-INF/db2-jpa-changelog-1.9.1.xml', '2024-02-27 07:31:37.99642', 25, 'MARK_RAN', '9:0d6c65c6f58732d81569e77b10ba301d', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('1.9.2', 'keycloak', 'META-INF/jpa-changelog-1.9.2.xml', '2024-02-27 07:31:38.044976', 26, 'EXECUTED', '9:fc576660fc016ae53d2d4778d84d86d0', 'createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authz-2.0.0', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.0.0.xml', '2024-02-27 07:31:38.143182', 27, 'EXECUTED', '9:43ed6b0da89ff77206289e87eaa9c024', 'createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authz-2.5.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.5.1.xml', '2024-02-27 07:31:38.147043', 28, 'EXECUTED', '9:44bae577f551b3738740281eceb4ea70', 'update tableName=RESOURCE_SERVER_POLICY', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('2.1.0-KEYCLOAK-5461', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.1.0.xml', '2024-02-27 07:31:38.223614', 29, 'EXECUTED', '9:bd88e1f833df0420b01e114533aee5e8', 'createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('2.2.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.2.0.xml', '2024-02-27 07:31:38.240022', 30, 'EXECUTED', '9:a7022af5267f019d020edfe316ef4371', 'addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('2.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.3.0.xml', '2024-02-27 07:31:38.261601', 31, 'EXECUTED', '9:fc155c394040654d6a79227e56f5e25a', 'createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('2.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.4.0.xml', '2024-02-27 07:31:38.266018', 32, 'EXECUTED', '9:eac4ffb2a14795e5dc7b426063e54d88', 'customChange', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('2.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2024-02-27 07:31:38.271775', 33, 'EXECUTED', '9:54937c05672568c4c64fc9524c1e9462', 'customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('2.5.0-unicode-oracle', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2024-02-27 07:31:38.275315', 34, 'MARK_RAN', '9:3a32bace77c84d7678d035a7f5a8084e', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('2.5.0-unicode-other-dbs', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2024-02-27 07:31:38.306865', 35, 'EXECUTED', '9:33d72168746f81f98ae3a1e8e0ca3554', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('2.5.0-duplicate-email-support', 'slawomir@dabek.name', 'META-INF/jpa-changelog-2.5.0.xml', '2024-02-27 07:31:38.31282', 36, 'EXECUTED', '9:61b6d3d7a4c0e0024b0c839da283da0c', 'addColumn tableName=REALM', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('2.5.0-unique-group-names', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2024-02-27 07:31:38.322103', 37, 'EXECUTED', '9:8dcac7bdf7378e7d823cdfddebf72fda', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('2.5.1', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.1.xml', '2024-02-27 07:31:38.327185', 38, 'EXECUTED', '9:a2b870802540cb3faa72098db5388af3', 'addColumn tableName=FED_USER_CONSENT', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('3.0.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-3.0.0.xml', '2024-02-27 07:31:38.331651', 39, 'EXECUTED', '9:132a67499ba24bcc54fb5cbdcfe7e4c0', 'addColumn tableName=IDENTITY_PROVIDER', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fix', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2024-02-27 07:31:38.333841', 40, 'MARK_RAN', '9:938f894c032f5430f2b0fafb1a243462', 'addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fix-with-keycloak-5416', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2024-02-27 07:31:38.3367', 41, 'MARK_RAN', '9:845c332ff1874dc5d35974b0babf3006', 'dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fix-offline-sessions', 'hmlnarik', 'META-INF/jpa-changelog-3.2.0.xml', '2024-02-27 07:31:38.341655', 42, 'EXECUTED', '9:fc86359c079781adc577c5a217e4d04c', 'customChange', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fixed', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2024-02-27 07:31:38.525411', 43, 'EXECUTED', '9:59a64800e3c0d09b825f8a3b444fa8f4', 'addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('3.3.0', 'keycloak', 'META-INF/jpa-changelog-3.3.0.xml', '2024-02-27 07:31:38.530307', 44, 'EXECUTED', '9:d48d6da5c6ccf667807f633fe489ce88', 'addColumn tableName=USER_ENTITY', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part1', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2024-02-27 07:31:38.535257', 45, 'EXECUTED', '9:dde36f7973e80d71fceee683bc5d2951', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2024-02-27 07:31:38.540004', 46, 'EXECUTED', '9:b855e9b0a406b34fa323235a0cf4f640', 'customChange', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2024-02-27 07:31:38.542016', 47, 'MARK_RAN', '9:51abbacd7b416c50c4421a8cabf7927e', 'dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2024-02-27 07:31:38.588008', 48, 'EXECUTED', '9:bdc99e567b3398bac83263d375aad143', 'addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authn-3.4.0.CR1-refresh-token-max-reuse', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2024-02-27 07:31:38.59339', 49, 'EXECUTED', '9:d198654156881c46bfba39abd7769e69', 'addColumn tableName=REALM', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('3.4.0', 'keycloak', 'META-INF/jpa-changelog-3.4.0.xml', '2024-02-27 07:31:38.650953', 50, 'EXECUTED', '9:cfdd8736332ccdd72c5256ccb42335db', 'addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('3.4.0-KEYCLOAK-5230', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-3.4.0.xml', '2024-02-27 07:31:38.697791', 51, 'EXECUTED', '9:7c84de3d9bd84d7f077607c1a4dcb714', 'createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('3.4.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-3.4.1.xml', '2024-02-27 07:31:38.701514', 52, 'EXECUTED', '9:5a6bb36cbefb6a9d6928452c0852af2d', 'modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('3.4.2', 'keycloak', 'META-INF/jpa-changelog-3.4.2.xml', '2024-02-27 07:31:38.704496', 53, 'EXECUTED', '9:8f23e334dbc59f82e0a328373ca6ced0', 'update tableName=REALM', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('3.4.2-KEYCLOAK-5172', 'mkanis@redhat.com', 'META-INF/jpa-changelog-3.4.2.xml', '2024-02-27 07:31:38.707584', 54, 'EXECUTED', '9:9156214268f09d970cdf0e1564d866af', 'update tableName=CLIENT', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.0.0-KEYCLOAK-6335', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2024-02-27 07:31:38.716267', 55, 'EXECUTED', '9:db806613b1ed154826c02610b7dbdf74', 'createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.0.0-CLEANUP-UNUSED-TABLE', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2024-02-27 07:31:38.722084', 56, 'EXECUTED', '9:229a041fb72d5beac76bb94a5fa709de', 'dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.0.0-KEYCLOAK-6228', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2024-02-27 07:31:38.749489', 57, 'EXECUTED', '9:079899dade9c1e683f26b2aa9ca6ff04', 'dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.0.0-KEYCLOAK-5579-fixed', 'mposolda@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2024-02-27 07:31:38.855712', 58, 'EXECUTED', '9:139b79bcbbfe903bb1c2d2a4dbf001d9', 'dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authz-4.0.0.CR1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.CR1.xml', '2024-02-27 07:31:38.88982', 59, 'EXECUTED', '9:b55738ad889860c625ba2bf483495a04', 'createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authz-4.0.0.Beta3', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.Beta3.xml', '2024-02-27 07:31:38.896533', 60, 'EXECUTED', '9:e0057eac39aa8fc8e09ac6cfa4ae15fe', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authz-4.2.0.Final', 'mhajas@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2024-02-27 07:31:38.904735', 61, 'EXECUTED', '9:42a33806f3a0443fe0e7feeec821326c', 'createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authz-4.2.0.Final-KEYCLOAK-9944', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2024-02-27 07:31:38.912841', 62, 'EXECUTED', '9:9968206fca46eecc1f51db9c024bfe56', 'addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.2.0-KEYCLOAK-6313', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.2.0.xml', '2024-02-27 07:31:38.917686', 63, 'EXECUTED', '9:92143a6daea0a3f3b8f598c97ce55c3d', 'addColumn tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.3.0-KEYCLOAK-7984', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.3.0.xml', '2024-02-27 07:31:38.921507', 64, 'EXECUTED', '9:82bab26a27195d889fb0429003b18f40', 'update tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.6.0-KEYCLOAK-7950', 'psilva@redhat.com', 'META-INF/jpa-changelog-4.6.0.xml', '2024-02-27 07:31:38.92498', 65, 'EXECUTED', '9:e590c88ddc0b38b0ae4249bbfcb5abc3', 'update tableName=RESOURCE_SERVER_RESOURCE', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.6.0-KEYCLOAK-8377', 'keycloak', 'META-INF/jpa-changelog-4.6.0.xml', '2024-02-27 07:31:38.942436', 66, 'EXECUTED', '9:5c1f475536118dbdc38d5d7977950cc0', 'createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.6.0-KEYCLOAK-8555', 'gideonray@gmail.com', 'META-INF/jpa-changelog-4.6.0.xml', '2024-02-27 07:31:38.950266', 67, 'EXECUTED', '9:e7c9f5f9c4d67ccbbcc215440c718a17', 'createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.7.0-KEYCLOAK-1267', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.7.0.xml', '2024-02-27 07:31:38.955189', 68, 'EXECUTED', '9:88e0bfdda924690d6f4e430c53447dd5', 'addColumn tableName=REALM', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.7.0-KEYCLOAK-7275', 'keycloak', 'META-INF/jpa-changelog-4.7.0.xml', '2024-02-27 07:31:38.966768', 69, 'EXECUTED', '9:f53177f137e1c46b6a88c59ec1cb5218', 'renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('4.8.0-KEYCLOAK-8835', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.8.0.xml', '2024-02-27 07:31:38.972479', 70, 'EXECUTED', '9:a74d33da4dc42a37ec27121580d1459f', 'addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('authz-7.0.0-KEYCLOAK-10443', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-7.0.0.xml', '2024-02-27 07:31:38.97716', 71, 'EXECUTED', '9:fd4ade7b90c3b67fae0bfcfcb42dfb5f', 'addColumn tableName=RESOURCE_SERVER', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('8.0.0-adding-credential-columns', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2024-02-27 07:31:38.983969', 72, 'EXECUTED', '9:aa072ad090bbba210d8f18781b8cebf4', 'addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('8.0.0-updating-credential-data-not-oracle-fixed', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2024-02-27 07:31:38.989668', 73, 'EXECUTED', '9:1ae6be29bab7c2aa376f6983b932be37', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('8.0.0-updating-credential-data-oracle-fixed', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2024-02-27 07:31:38.992499', 74, 'MARK_RAN', '9:14706f286953fc9a25286dbd8fb30d97', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('8.0.0-credential-cleanup-fixed', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2024-02-27 07:31:39.007661', 75, 'EXECUTED', '9:2b9cc12779be32c5b40e2e67711a218b', 'dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('8.0.0-resource-tag-support', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2024-02-27 07:31:39.016116', 76, 'EXECUTED', '9:91fa186ce7a5af127a2d7a91ee083cc5', 'addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('9.0.0-always-display-client', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2024-02-27 07:31:39.020521', 77, 'EXECUTED', '9:6335e5c94e83a2639ccd68dd24e2e5ad', 'addColumn tableName=CLIENT', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('9.0.0-drop-constraints-for-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2024-02-27 07:31:39.022942', 78, 'MARK_RAN', '9:6bdb5658951e028bfe16fa0a8228b530', 'dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('9.0.0-increase-column-size-federated-fk', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2024-02-27 07:31:39.042015', 79, 'EXECUTED', '9:d5bc15a64117ccad481ce8792d4c608f', 'modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('9.0.0-recreate-constraints-after-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2024-02-27 07:31:39.045771', 80, 'MARK_RAN', '9:077cba51999515f4d3e7ad5619ab592c', 'addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('9.0.1-add-index-to-client.client_id', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2024-02-27 07:31:39.055047', 81, 'EXECUTED', '9:be969f08a163bf47c6b9e9ead8ac2afb', 'createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('9.0.1-KEYCLOAK-12579-drop-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2024-02-27 07:31:39.057402', 82, 'MARK_RAN', '9:6d3bb4408ba5a72f39bd8a0b301ec6e3', 'dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('9.0.1-KEYCLOAK-12579-add-not-null-constraint', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2024-02-27 07:31:39.063169', 83, 'EXECUTED', '9:966bda61e46bebf3cc39518fbed52fa7', 'addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('9.0.1-KEYCLOAK-12579-recreate-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2024-02-27 07:31:39.065502', 84, 'MARK_RAN', '9:8dcac7bdf7378e7d823cdfddebf72fda', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('9.0.1-add-index-to-events', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2024-02-27 07:31:39.073428', 85, 'EXECUTED', '9:7d93d602352a30c0c317e6a609b56599', 'createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('map-remove-ri', 'keycloak', 'META-INF/jpa-changelog-11.0.0.xml', '2024-02-27 07:31:39.078796', 86, 'EXECUTED', '9:71c5969e6cdd8d7b6f47cebc86d37627', 'dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('map-remove-ri', 'keycloak', 'META-INF/jpa-changelog-12.0.0.xml', '2024-02-27 07:31:39.085514', 87, 'EXECUTED', '9:a9ba7d47f065f041b7da856a81762021', 'dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('12.1.0-add-realm-localization-table', 'keycloak', 'META-INF/jpa-changelog-12.0.0.xml', '2024-02-27 07:31:39.097786', 88, 'EXECUTED', '9:fffabce2bc01e1a8f5110d5278500065', 'createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('default-roles', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2024-02-27 07:31:39.103417', 89, 'EXECUTED', '9:fa8a5b5445e3857f4b010bafb5009957', 'addColumn tableName=REALM; customChange', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('default-roles-cleanup', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2024-02-27 07:31:39.109946', 90, 'EXECUTED', '9:67ac3241df9a8582d591c5ed87125f39', 'dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('13.0.0-KEYCLOAK-16844', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2024-02-27 07:31:39.118439', 91, 'EXECUTED', '9:ad1194d66c937e3ffc82386c050ba089', 'createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('map-remove-ri-13.0.0', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2024-02-27 07:31:39.126326', 92, 'EXECUTED', '9:d9be619d94af5a2f5d07b9f003543b91', 'dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('13.0.0-KEYCLOAK-17992-drop-constraints', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2024-02-27 07:31:39.129579', 93, 'MARK_RAN', '9:544d201116a0fcc5a5da0925fbbc3bde', 'dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('13.0.0-increase-column-size-federated', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2024-02-27 07:31:39.140361', 94, 'EXECUTED', '9:43c0c1055b6761b4b3e89de76d612ccf', 'modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('13.0.0-KEYCLOAK-17992-recreate-constraints', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2024-02-27 07:31:39.143456', 95, 'MARK_RAN', '9:8bd711fd0330f4fe980494ca43ab1139', 'addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('json-string-accomodation-fixed', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2024-02-27 07:31:39.150632', 96, 'EXECUTED', '9:e07d2bc0970c348bb06fb63b1f82ddbf', 'addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('14.0.0-KEYCLOAK-11019', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2024-02-27 07:31:39.168057', 97, 'EXECUTED', '9:24fb8611e97f29989bea412aa38d12b7', 'createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('14.0.0-KEYCLOAK-18286', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2024-02-27 07:31:39.170479', 98, 'MARK_RAN', '9:259f89014ce2506ee84740cbf7163aa7', 'createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('14.0.0-KEYCLOAK-18286-revert', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2024-02-27 07:31:39.179594', 99, 'MARK_RAN', '9:04baaf56c116ed19951cbc2cca584022', 'dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('14.0.0-KEYCLOAK-18286-supported-dbs', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2024-02-27 07:31:39.193369', 100, 'EXECUTED', '9:60ca84a0f8c94ec8c3504a5a3bc88ee8', 'createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('14.0.0-KEYCLOAK-18286-unsupported-dbs', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2024-02-27 07:31:39.19605', 101, 'MARK_RAN', '9:d3d977031d431db16e2c181ce49d73e9', 'createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('KEYCLOAK-17267-add-index-to-user-attributes', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2024-02-27 07:31:39.206382', 102, 'EXECUTED', '9:0b305d8d1277f3a89a0a53a659ad274c', 'createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('KEYCLOAK-18146-add-saml-art-binding-identifier', 'keycloak', 'META-INF/jpa-changelog-14.0.0.xml', '2024-02-27 07:31:39.211208', 103, 'EXECUTED', '9:2c374ad2cdfe20e2905a84c8fac48460', 'customChange', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('15.0.0-KEYCLOAK-18467', 'keycloak', 'META-INF/jpa-changelog-15.0.0.xml', '2024-02-27 07:31:39.217948', 104, 'EXECUTED', '9:47a760639ac597360a8219f5b768b4de', 'addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('17.0.0-9562', 'keycloak', 'META-INF/jpa-changelog-17.0.0.xml', '2024-02-27 07:31:39.226346', 105, 'EXECUTED', '9:a6272f0576727dd8cad2522335f5d99e', 'createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('18.0.0-10625-IDX_ADMIN_EVENT_TIME', 'keycloak', 'META-INF/jpa-changelog-18.0.0.xml', '2024-02-27 07:31:39.234568', 106, 'EXECUTED', '9:015479dbd691d9cc8669282f4828c41d', 'createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('19.0.0-10135', 'keycloak', 'META-INF/jpa-changelog-19.0.0.xml', '2024-02-27 07:31:39.239561', 107, 'EXECUTED', '9:9518e495fdd22f78ad6425cc30630221', 'customChange', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('20.0.0-12964-supported-dbs', 'keycloak', 'META-INF/jpa-changelog-20.0.0.xml', '2024-02-27 07:31:39.247967', 108, 'EXECUTED', '9:e5f243877199fd96bcc842f27a1656ac', 'createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('20.0.0-12964-unsupported-dbs', 'keycloak', 'META-INF/jpa-changelog-20.0.0.xml', '2024-02-27 07:31:39.250217', 109, 'MARK_RAN', '9:1a6fcaa85e20bdeae0a9ce49b41946a5', 'createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('client-attributes-string-accomodation-fixed', 'keycloak', 'META-INF/jpa-changelog-20.0.0.xml', '2024-02-27 07:31:39.257662', 110, 'EXECUTED', '9:3f332e13e90739ed0c35b0b25b7822ca', 'addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('21.0.2-17277', 'keycloak', 'META-INF/jpa-changelog-21.0.2.xml', '2024-02-27 07:31:39.263776', 111, 'EXECUTED', '9:7ee1f7a3fb8f5588f171fb9a6ab623c0', 'customChange', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('21.1.0-19404', 'keycloak', 'META-INF/jpa-changelog-21.1.0.xml', '2024-02-27 07:31:39.298042', 112, 'EXECUTED', '9:3d7e830b52f33676b9d64f7f2b2ea634', 'modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('21.1.0-19404-2', 'keycloak', 'META-INF/jpa-changelog-21.1.0.xml', '2024-02-27 07:31:39.301031', 113, 'MARK_RAN', '9:627d032e3ef2c06c0e1f73d2ae25c26c', 'addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('22.0.0-17484-updated', 'keycloak', 'META-INF/jpa-changelog-22.0.0.xml', '2024-02-27 07:31:39.305363', 114, 'EXECUTED', '9:90af0bfd30cafc17b9f4d6eccd92b8b3', 'customChange', '', NULL, '4.23.2', NULL, NULL, '9019096511');
INSERT INTO public.databasechangelog VALUES ('22.0.5-24031', 'keycloak', 'META-INF/jpa-changelog-22.0.0.xml', '2024-02-27 07:31:39.307428', 115, 'MARK_RAN', '9:a60d2d7b315ec2d3eba9e2f145f9df28', 'customChange', '', NULL, '4.23.2', NULL, NULL, '9019096511');


--
-- TOC entry 4048 (class 0 OID 16385)
-- Dependencies: 214
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.databasechangeloglock VALUES (1, false, NULL, NULL);
INSERT INTO public.databasechangeloglock VALUES (1000, false, NULL, NULL);
INSERT INTO public.databasechangeloglock VALUES (1001, false, NULL, NULL);


--
-- TOC entry 4132 (class 0 OID 17781)
-- Dependencies: 298
-- Data for Name: default_client_scope; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.default_client_scope VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', 'afae0a48-6fed-487a-b8b2-8d5ee5f7f456', false);
INSERT INTO public.default_client_scope VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', '17a14959-ad2f-49ed-9c9c-7352062d618c', true);
INSERT INTO public.default_client_scope VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', '9782c473-56bf-40dc-9b79-eacb3d0ac1d1', true);
INSERT INTO public.default_client_scope VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', '3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea', true);
INSERT INTO public.default_client_scope VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', '93431f73-9803-4404-a566-dba079d3e527', false);
INSERT INTO public.default_client_scope VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', '936d52e7-021f-4731-a35d-d61af1176f24', false);
INSERT INTO public.default_client_scope VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', '6049de33-e5b2-4852-9b59-24c288bace86', true);
INSERT INTO public.default_client_scope VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', '6e470c9c-95b2-4ed1-98ce-c6dd5447b99d', true);
INSERT INTO public.default_client_scope VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', '3f0102c3-c103-43ba-97d4-32415b030e25', false);
INSERT INTO public.default_client_scope VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', '3ba8719d-60bc-4769-bd22-f4fe3eae4012', true);


--
-- TOC entry 4055 (class 0 OID 16425)
-- Dependencies: 221
-- Data for Name: event_entity; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4120 (class 0 OID 17480)
-- Dependencies: 286
-- Data for Name: fed_user_attribute; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4121 (class 0 OID 17485)
-- Dependencies: 287
-- Data for Name: fed_user_consent; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4134 (class 0 OID 17807)
-- Dependencies: 300
-- Data for Name: fed_user_consent_cl_scope; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4122 (class 0 OID 17494)
-- Dependencies: 288
-- Data for Name: fed_user_credential; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4123 (class 0 OID 17503)
-- Dependencies: 289
-- Data for Name: fed_user_group_membership; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4124 (class 0 OID 17506)
-- Dependencies: 290
-- Data for Name: fed_user_required_action; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4125 (class 0 OID 17512)
-- Dependencies: 291
-- Data for Name: fed_user_role_mapping; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4078 (class 0 OID 16802)
-- Dependencies: 244
-- Data for Name: federated_identity; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4128 (class 0 OID 17577)
-- Dependencies: 294
-- Data for Name: federated_user; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4102 (class 0 OID 17198)
-- Dependencies: 268
-- Data for Name: keycloak_group; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4104 (class 0 OID 17204)
-- Dependencies: 270
-- Data for Name: group_attribute; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4103 (class 0 OID 17201)
-- Dependencies: 269
-- Data for Name: group_role_mapping; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4079 (class 0 OID 16807)
-- Dependencies: 245
-- Data for Name: identity_provider; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4080 (class 0 OID 16816)
-- Dependencies: 246
-- Data for Name: identity_provider_config; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4085 (class 0 OID 16920)
-- Dependencies: 251
-- Data for Name: identity_provider_mapper; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4086 (class 0 OID 16925)
-- Dependencies: 252
-- Data for Name: idp_mapper_config; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4084 (class 0 OID 16917)
-- Dependencies: 250
-- Data for Name: migration_model; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.migration_model VALUES ('2yt5g', '22.0.5', 1709019099);


--
-- TOC entry 4101 (class 0 OID 17189)
-- Dependencies: 267
-- Data for Name: offline_client_session; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4100 (class 0 OID 17184)
-- Dependencies: 266
-- Data for Name: offline_user_session; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4114 (class 0 OID 17403)
-- Dependencies: 280
-- Data for Name: policy_config; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4076 (class 0 OID 16791)
-- Dependencies: 242
-- Data for Name: protocol_mapper; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.protocol_mapper VALUES ('5d49f8ec-86ea-4fcb-8e1b-1043e668f1f4', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', '12ba90f4-8c0e-4b54-b153-83546b842264', NULL);
INSERT INTO public.protocol_mapper VALUES ('b01d6895-753f-4257-a84e-597c0288b722', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', '383a3f97-efa5-4ca2-a0ee-a5b7314ba803', NULL);
INSERT INTO public.protocol_mapper VALUES ('8811cbf4-4c06-4a87-a1ac-30eeba8736c3', 'role list', 'saml', 'saml-role-list-mapper', NULL, '17a14959-ad2f-49ed-9c9c-7352062d618c');
INSERT INTO public.protocol_mapper VALUES ('e985e73d-e28d-49ff-aaf7-d3211ecde5ae', 'full name', 'openid-connect', 'oidc-full-name-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('752dde94-6601-42de-892e-ea01e94a0727', 'family name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('8cdfe196-5d6a-4b9d-81cd-abee097a00c2', 'given name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('c06f3d7a-bfd5-4eba-b090-b120167c002a', 'middle name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('462a0e20-4e42-4ca7-b5d0-6258e2ef150f', 'nickname', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('55ee0bc2-6a6b-4a52-97fa-6d32708a8638', 'username', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('3c7e7968-f68d-4989-b73c-eb4e0ccc34d6', 'profile', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('f7ab17b6-fffa-4180-b7d9-4ac42a4dfc9e', 'picture', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('f7de0885-f3b5-45c0-8cba-c63286ff8051', 'website', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('c6bdb90d-6dcc-4439-85a7-5c3669f28bde', 'gender', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('397ce17a-eb49-4f65-91cc-47cd80b669fa', 'birthdate', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('2335a2bc-780e-40e9-a2b7-9cfaca99167f', 'zoneinfo', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('5ec5ebb7-6222-4a94-a33f-a8ee0bf173a7', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('140811b6-fbc4-41d1-a162-0ff04456ee64', 'updated at', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '9782c473-56bf-40dc-9b79-eacb3d0ac1d1');
INSERT INTO public.protocol_mapper VALUES ('16630e74-6884-49d0-97f7-292c28134943', 'email', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea');
INSERT INTO public.protocol_mapper VALUES ('d16124e2-713f-45d1-9bc1-bdb278bdc28e', 'email verified', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '3e483899-f0cb-41f5-b2b3-6b6bcd3e03ea');
INSERT INTO public.protocol_mapper VALUES ('a501ee22-79fb-4fc1-af91-4dae0a21f829', 'address', 'openid-connect', 'oidc-address-mapper', NULL, '93431f73-9803-4404-a566-dba079d3e527');
INSERT INTO public.protocol_mapper VALUES ('bb61e339-4727-445c-b27b-0a21148a33b2', 'phone number', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '936d52e7-021f-4731-a35d-d61af1176f24');
INSERT INTO public.protocol_mapper VALUES ('81cc8570-beae-4170-a7c1-25c23bd6766a', 'phone number verified', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '936d52e7-021f-4731-a35d-d61af1176f24');
INSERT INTO public.protocol_mapper VALUES ('001b89f7-c375-4399-a8b2-155ab48168ce', 'realm roles', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '6049de33-e5b2-4852-9b59-24c288bace86');
INSERT INTO public.protocol_mapper VALUES ('90aa50e2-c785-4828-8bea-353699f0a83b', 'client roles', 'openid-connect', 'oidc-usermodel-client-role-mapper', NULL, '6049de33-e5b2-4852-9b59-24c288bace86');
INSERT INTO public.protocol_mapper VALUES ('01486ef6-6b3f-4687-81e3-bddd8518e34f', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', NULL, '6049de33-e5b2-4852-9b59-24c288bace86');
INSERT INTO public.protocol_mapper VALUES ('208f6693-d5ab-4f50-ad8e-6de254058a19', 'allowed web origins', 'openid-connect', 'oidc-allowed-origins-mapper', NULL, '6e470c9c-95b2-4ed1-98ce-c6dd5447b99d');
INSERT INTO public.protocol_mapper VALUES ('8f9fa704-142a-4b64-8ee3-e3d359bc93c3', 'upn', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3f0102c3-c103-43ba-97d4-32415b030e25');
INSERT INTO public.protocol_mapper VALUES ('e47b3d74-4740-4317-9a73-5065e6566948', 'groups', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '3f0102c3-c103-43ba-97d4-32415b030e25');
INSERT INTO public.protocol_mapper VALUES ('bed8b714-3ae3-4628-99bc-9dcefcc91e5c', 'acr loa level', 'openid-connect', 'oidc-acr-mapper', NULL, '3ba8719d-60bc-4769-bd22-f4fe3eae4012');


--
-- TOC entry 4077 (class 0 OID 16797)
-- Dependencies: 243
-- Data for Name: protocol_mapper_config; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.protocol_mapper_config VALUES ('b01d6895-753f-4257-a84e-597c0288b722', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('b01d6895-753f-4257-a84e-597c0288b722', 'locale', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('b01d6895-753f-4257-a84e-597c0288b722', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('b01d6895-753f-4257-a84e-597c0288b722', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('b01d6895-753f-4257-a84e-597c0288b722', 'locale', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('b01d6895-753f-4257-a84e-597c0288b722', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('8811cbf4-4c06-4a87-a1ac-30eeba8736c3', 'false', 'single');
INSERT INTO public.protocol_mapper_config VALUES ('8811cbf4-4c06-4a87-a1ac-30eeba8736c3', 'Basic', 'attribute.nameformat');
INSERT INTO public.protocol_mapper_config VALUES ('8811cbf4-4c06-4a87-a1ac-30eeba8736c3', 'Role', 'attribute.name');
INSERT INTO public.protocol_mapper_config VALUES ('140811b6-fbc4-41d1-a162-0ff04456ee64', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('140811b6-fbc4-41d1-a162-0ff04456ee64', 'updatedAt', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('140811b6-fbc4-41d1-a162-0ff04456ee64', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('140811b6-fbc4-41d1-a162-0ff04456ee64', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('140811b6-fbc4-41d1-a162-0ff04456ee64', 'updated_at', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('140811b6-fbc4-41d1-a162-0ff04456ee64', 'long', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('2335a2bc-780e-40e9-a2b7-9cfaca99167f', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2335a2bc-780e-40e9-a2b7-9cfaca99167f', 'zoneinfo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('2335a2bc-780e-40e9-a2b7-9cfaca99167f', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2335a2bc-780e-40e9-a2b7-9cfaca99167f', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2335a2bc-780e-40e9-a2b7-9cfaca99167f', 'zoneinfo', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('2335a2bc-780e-40e9-a2b7-9cfaca99167f', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('397ce17a-eb49-4f65-91cc-47cd80b669fa', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('397ce17a-eb49-4f65-91cc-47cd80b669fa', 'birthdate', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('397ce17a-eb49-4f65-91cc-47cd80b669fa', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('397ce17a-eb49-4f65-91cc-47cd80b669fa', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('397ce17a-eb49-4f65-91cc-47cd80b669fa', 'birthdate', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('397ce17a-eb49-4f65-91cc-47cd80b669fa', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('3c7e7968-f68d-4989-b73c-eb4e0ccc34d6', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3c7e7968-f68d-4989-b73c-eb4e0ccc34d6', 'profile', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('3c7e7968-f68d-4989-b73c-eb4e0ccc34d6', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3c7e7968-f68d-4989-b73c-eb4e0ccc34d6', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3c7e7968-f68d-4989-b73c-eb4e0ccc34d6', 'profile', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('3c7e7968-f68d-4989-b73c-eb4e0ccc34d6', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('462a0e20-4e42-4ca7-b5d0-6258e2ef150f', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('462a0e20-4e42-4ca7-b5d0-6258e2ef150f', 'nickname', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('462a0e20-4e42-4ca7-b5d0-6258e2ef150f', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('462a0e20-4e42-4ca7-b5d0-6258e2ef150f', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('462a0e20-4e42-4ca7-b5d0-6258e2ef150f', 'nickname', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('462a0e20-4e42-4ca7-b5d0-6258e2ef150f', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('55ee0bc2-6a6b-4a52-97fa-6d32708a8638', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('55ee0bc2-6a6b-4a52-97fa-6d32708a8638', 'username', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('55ee0bc2-6a6b-4a52-97fa-6d32708a8638', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('55ee0bc2-6a6b-4a52-97fa-6d32708a8638', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('55ee0bc2-6a6b-4a52-97fa-6d32708a8638', 'preferred_username', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('55ee0bc2-6a6b-4a52-97fa-6d32708a8638', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('5ec5ebb7-6222-4a94-a33f-a8ee0bf173a7', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5ec5ebb7-6222-4a94-a33f-a8ee0bf173a7', 'locale', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('5ec5ebb7-6222-4a94-a33f-a8ee0bf173a7', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5ec5ebb7-6222-4a94-a33f-a8ee0bf173a7', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5ec5ebb7-6222-4a94-a33f-a8ee0bf173a7', 'locale', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('5ec5ebb7-6222-4a94-a33f-a8ee0bf173a7', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('752dde94-6601-42de-892e-ea01e94a0727', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('752dde94-6601-42de-892e-ea01e94a0727', 'lastName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('752dde94-6601-42de-892e-ea01e94a0727', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('752dde94-6601-42de-892e-ea01e94a0727', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('752dde94-6601-42de-892e-ea01e94a0727', 'family_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('752dde94-6601-42de-892e-ea01e94a0727', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('8cdfe196-5d6a-4b9d-81cd-abee097a00c2', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8cdfe196-5d6a-4b9d-81cd-abee097a00c2', 'firstName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('8cdfe196-5d6a-4b9d-81cd-abee097a00c2', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8cdfe196-5d6a-4b9d-81cd-abee097a00c2', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8cdfe196-5d6a-4b9d-81cd-abee097a00c2', 'given_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('8cdfe196-5d6a-4b9d-81cd-abee097a00c2', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('c06f3d7a-bfd5-4eba-b090-b120167c002a', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c06f3d7a-bfd5-4eba-b090-b120167c002a', 'middleName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('c06f3d7a-bfd5-4eba-b090-b120167c002a', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c06f3d7a-bfd5-4eba-b090-b120167c002a', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c06f3d7a-bfd5-4eba-b090-b120167c002a', 'middle_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('c06f3d7a-bfd5-4eba-b090-b120167c002a', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('c6bdb90d-6dcc-4439-85a7-5c3669f28bde', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c6bdb90d-6dcc-4439-85a7-5c3669f28bde', 'gender', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('c6bdb90d-6dcc-4439-85a7-5c3669f28bde', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c6bdb90d-6dcc-4439-85a7-5c3669f28bde', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c6bdb90d-6dcc-4439-85a7-5c3669f28bde', 'gender', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('c6bdb90d-6dcc-4439-85a7-5c3669f28bde', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('e985e73d-e28d-49ff-aaf7-d3211ecde5ae', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e985e73d-e28d-49ff-aaf7-d3211ecde5ae', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e985e73d-e28d-49ff-aaf7-d3211ecde5ae', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f7ab17b6-fffa-4180-b7d9-4ac42a4dfc9e', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f7ab17b6-fffa-4180-b7d9-4ac42a4dfc9e', 'picture', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('f7ab17b6-fffa-4180-b7d9-4ac42a4dfc9e', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f7ab17b6-fffa-4180-b7d9-4ac42a4dfc9e', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f7ab17b6-fffa-4180-b7d9-4ac42a4dfc9e', 'picture', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('f7ab17b6-fffa-4180-b7d9-4ac42a4dfc9e', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('f7de0885-f3b5-45c0-8cba-c63286ff8051', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f7de0885-f3b5-45c0-8cba-c63286ff8051', 'website', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('f7de0885-f3b5-45c0-8cba-c63286ff8051', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f7de0885-f3b5-45c0-8cba-c63286ff8051', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f7de0885-f3b5-45c0-8cba-c63286ff8051', 'website', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('f7de0885-f3b5-45c0-8cba-c63286ff8051', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('16630e74-6884-49d0-97f7-292c28134943', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('16630e74-6884-49d0-97f7-292c28134943', 'email', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('16630e74-6884-49d0-97f7-292c28134943', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('16630e74-6884-49d0-97f7-292c28134943', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('16630e74-6884-49d0-97f7-292c28134943', 'email', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('16630e74-6884-49d0-97f7-292c28134943', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('d16124e2-713f-45d1-9bc1-bdb278bdc28e', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('d16124e2-713f-45d1-9bc1-bdb278bdc28e', 'emailVerified', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('d16124e2-713f-45d1-9bc1-bdb278bdc28e', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('d16124e2-713f-45d1-9bc1-bdb278bdc28e', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('d16124e2-713f-45d1-9bc1-bdb278bdc28e', 'email_verified', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('d16124e2-713f-45d1-9bc1-bdb278bdc28e', 'boolean', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('a501ee22-79fb-4fc1-af91-4dae0a21f829', 'formatted', 'user.attribute.formatted');
INSERT INTO public.protocol_mapper_config VALUES ('a501ee22-79fb-4fc1-af91-4dae0a21f829', 'country', 'user.attribute.country');
INSERT INTO public.protocol_mapper_config VALUES ('a501ee22-79fb-4fc1-af91-4dae0a21f829', 'postal_code', 'user.attribute.postal_code');
INSERT INTO public.protocol_mapper_config VALUES ('a501ee22-79fb-4fc1-af91-4dae0a21f829', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a501ee22-79fb-4fc1-af91-4dae0a21f829', 'street', 'user.attribute.street');
INSERT INTO public.protocol_mapper_config VALUES ('a501ee22-79fb-4fc1-af91-4dae0a21f829', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a501ee22-79fb-4fc1-af91-4dae0a21f829', 'region', 'user.attribute.region');
INSERT INTO public.protocol_mapper_config VALUES ('a501ee22-79fb-4fc1-af91-4dae0a21f829', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a501ee22-79fb-4fc1-af91-4dae0a21f829', 'locality', 'user.attribute.locality');
INSERT INTO public.protocol_mapper_config VALUES ('81cc8570-beae-4170-a7c1-25c23bd6766a', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('81cc8570-beae-4170-a7c1-25c23bd6766a', 'phoneNumberVerified', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('81cc8570-beae-4170-a7c1-25c23bd6766a', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('81cc8570-beae-4170-a7c1-25c23bd6766a', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('81cc8570-beae-4170-a7c1-25c23bd6766a', 'phone_number_verified', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('81cc8570-beae-4170-a7c1-25c23bd6766a', 'boolean', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('bb61e339-4727-445c-b27b-0a21148a33b2', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('bb61e339-4727-445c-b27b-0a21148a33b2', 'phoneNumber', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('bb61e339-4727-445c-b27b-0a21148a33b2', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('bb61e339-4727-445c-b27b-0a21148a33b2', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('bb61e339-4727-445c-b27b-0a21148a33b2', 'phone_number', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('bb61e339-4727-445c-b27b-0a21148a33b2', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('001b89f7-c375-4399-a8b2-155ab48168ce', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('001b89f7-c375-4399-a8b2-155ab48168ce', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('001b89f7-c375-4399-a8b2-155ab48168ce', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('001b89f7-c375-4399-a8b2-155ab48168ce', 'realm_access.roles', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('001b89f7-c375-4399-a8b2-155ab48168ce', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('90aa50e2-c785-4828-8bea-353699f0a83b', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('90aa50e2-c785-4828-8bea-353699f0a83b', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('90aa50e2-c785-4828-8bea-353699f0a83b', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('90aa50e2-c785-4828-8bea-353699f0a83b', 'resource_access.${client_id}.roles', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('90aa50e2-c785-4828-8bea-353699f0a83b', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('8f9fa704-142a-4b64-8ee3-e3d359bc93c3', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8f9fa704-142a-4b64-8ee3-e3d359bc93c3', 'username', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('8f9fa704-142a-4b64-8ee3-e3d359bc93c3', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8f9fa704-142a-4b64-8ee3-e3d359bc93c3', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8f9fa704-142a-4b64-8ee3-e3d359bc93c3', 'upn', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('8f9fa704-142a-4b64-8ee3-e3d359bc93c3', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('e47b3d74-4740-4317-9a73-5065e6566948', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('e47b3d74-4740-4317-9a73-5065e6566948', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('e47b3d74-4740-4317-9a73-5065e6566948', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e47b3d74-4740-4317-9a73-5065e6566948', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e47b3d74-4740-4317-9a73-5065e6566948', 'groups', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('e47b3d74-4740-4317-9a73-5065e6566948', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('bed8b714-3ae3-4628-99bc-9dcefcc91e5c', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('bed8b714-3ae3-4628-99bc-9dcefcc91e5c', 'true', 'access.token.claim');


--
-- TOC entry 4058 (class 0 OID 16456)
-- Dependencies: 224
-- Data for Name: realm_attribute; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.realm_attribute VALUES ('_browser_header.contentSecurityPolicyReportOnly', 'db90a8ec-006d-42ea-a943-6a4382f55821', '');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xContentTypeOptions', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'nosniff');
INSERT INTO public.realm_attribute VALUES ('_browser_header.referrerPolicy', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'no-referrer');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xRobotsTag', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'none');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xFrameOptions', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'SAMEORIGIN');
INSERT INTO public.realm_attribute VALUES ('_browser_header.contentSecurityPolicy', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'frame-src ''self''; frame-ancestors ''self''; object-src ''none'';');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xXSSProtection', 'db90a8ec-006d-42ea-a943-6a4382f55821', '1; mode=block');
INSERT INTO public.realm_attribute VALUES ('_browser_header.strictTransportSecurity', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'max-age=31536000; includeSubDomains');
INSERT INTO public.realm_attribute VALUES ('bruteForceProtected', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'false');
INSERT INTO public.realm_attribute VALUES ('permanentLockout', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'false');
INSERT INTO public.realm_attribute VALUES ('maxFailureWaitSeconds', 'db90a8ec-006d-42ea-a943-6a4382f55821', '900');
INSERT INTO public.realm_attribute VALUES ('minimumQuickLoginWaitSeconds', 'db90a8ec-006d-42ea-a943-6a4382f55821', '60');
INSERT INTO public.realm_attribute VALUES ('waitIncrementSeconds', 'db90a8ec-006d-42ea-a943-6a4382f55821', '60');
INSERT INTO public.realm_attribute VALUES ('quickLoginCheckMilliSeconds', 'db90a8ec-006d-42ea-a943-6a4382f55821', '1000');
INSERT INTO public.realm_attribute VALUES ('maxDeltaTimeSeconds', 'db90a8ec-006d-42ea-a943-6a4382f55821', '43200');
INSERT INTO public.realm_attribute VALUES ('failureFactor', 'db90a8ec-006d-42ea-a943-6a4382f55821', '30');
INSERT INTO public.realm_attribute VALUES ('realmReusableOtpCode', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'false');
INSERT INTO public.realm_attribute VALUES ('displayName', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'Keycloak');
INSERT INTO public.realm_attribute VALUES ('displayNameHtml', 'db90a8ec-006d-42ea-a943-6a4382f55821', '<div class="kc-logo-text"><span>Keycloak</span></div>');
INSERT INTO public.realm_attribute VALUES ('defaultSignatureAlgorithm', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'RS256');
INSERT INTO public.realm_attribute VALUES ('offlineSessionMaxLifespanEnabled', 'db90a8ec-006d-42ea-a943-6a4382f55821', 'false');
INSERT INTO public.realm_attribute VALUES ('offlineSessionMaxLifespan', 'db90a8ec-006d-42ea-a943-6a4382f55821', '5184000');


--
-- TOC entry 4106 (class 0 OID 17213)
-- Dependencies: 272
-- Data for Name: realm_default_groups; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4083 (class 0 OID 16909)
-- Dependencies: 249
-- Data for Name: realm_enabled_event_types; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4059 (class 0 OID 16464)
-- Dependencies: 225
-- Data for Name: realm_events_listeners; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.realm_events_listeners VALUES ('db90a8ec-006d-42ea-a943-6a4382f55821', 'jboss-logging');


--
-- TOC entry 4139 (class 0 OID 17915)
-- Dependencies: 305
-- Data for Name: realm_localizations; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4060 (class 0 OID 16467)
-- Dependencies: 226
-- Data for Name: realm_required_credential; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.realm_required_credential VALUES ('password', 'password', true, true, 'db90a8ec-006d-42ea-a943-6a4382f55821');


--
-- TOC entry 4061 (class 0 OID 16474)
-- Dependencies: 227
-- Data for Name: realm_smtp_config; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4081 (class 0 OID 16825)
-- Dependencies: 247
-- Data for Name: realm_supported_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4062 (class 0 OID 16484)
-- Dependencies: 228
-- Data for Name: redirect_uris; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.redirect_uris VALUES ('61baa44c-bb06-4b50-9e15-521857c17124', '/realms/master/account/*');
INSERT INTO public.redirect_uris VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', '/realms/master/account/*');
INSERT INTO public.redirect_uris VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', '/admin/master/console/*');


--
-- TOC entry 4099 (class 0 OID 17148)
-- Dependencies: 265
-- Data for Name: required_action_config; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4098 (class 0 OID 17141)
-- Dependencies: 264
-- Data for Name: required_action_provider; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.required_action_provider VALUES ('85a8ffaf-92a8-4734-b207-d756ee6d67f4', 'VERIFY_EMAIL', 'Verify Email', 'db90a8ec-006d-42ea-a943-6a4382f55821', true, false, 'VERIFY_EMAIL', 50);
INSERT INTO public.required_action_provider VALUES ('d898a6fd-7fff-4166-99c6-f80bd057e1a5', 'UPDATE_PROFILE', 'Update Profile', 'db90a8ec-006d-42ea-a943-6a4382f55821', true, false, 'UPDATE_PROFILE', 40);
INSERT INTO public.required_action_provider VALUES ('c4103458-dd06-454f-bf2f-ac1afbc77c81', 'CONFIGURE_TOTP', 'Configure OTP', 'db90a8ec-006d-42ea-a943-6a4382f55821', true, false, 'CONFIGURE_TOTP', 10);
INSERT INTO public.required_action_provider VALUES ('53720268-8d93-4dbc-b600-80b7d59d0608', 'UPDATE_PASSWORD', 'Update Password', 'db90a8ec-006d-42ea-a943-6a4382f55821', true, false, 'UPDATE_PASSWORD', 30);
INSERT INTO public.required_action_provider VALUES ('16b9a01b-59f3-40b3-b76e-61e2b5a8af6b', 'TERMS_AND_CONDITIONS', 'Terms and Conditions', 'db90a8ec-006d-42ea-a943-6a4382f55821', false, false, 'TERMS_AND_CONDITIONS', 20);
INSERT INTO public.required_action_provider VALUES ('ea846e1d-de47-457b-91d8-5a9f93f618e6', 'delete_account', 'Delete Account', 'db90a8ec-006d-42ea-a943-6a4382f55821', false, false, 'delete_account', 60);
INSERT INTO public.required_action_provider VALUES ('823b254d-9e0d-4dfc-acb1-8564152a2c9d', 'update_user_locale', 'Update User Locale', 'db90a8ec-006d-42ea-a943-6a4382f55821', true, false, 'update_user_locale', 1000);
INSERT INTO public.required_action_provider VALUES ('fd0f4beb-36db-4847-b855-861c4824f8eb', 'webauthn-register', 'Webauthn Register', 'db90a8ec-006d-42ea-a943-6a4382f55821', true, false, 'webauthn-register', 70);
INSERT INTO public.required_action_provider VALUES ('4455ebd1-727e-4a3d-bab8-79c7e630e807', 'webauthn-register-passwordless', 'Webauthn Register Passwordless', 'db90a8ec-006d-42ea-a943-6a4382f55821', true, false, 'webauthn-register-passwordless', 80);


--
-- TOC entry 4111 (class 0 OID 17361)
-- Dependencies: 277
-- Data for Name: resource_server_resource; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4136 (class 0 OID 17846)
-- Dependencies: 302
-- Data for Name: resource_attribute; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4116 (class 0 OID 17430)
-- Dependencies: 282
-- Data for Name: resource_policy; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4112 (class 0 OID 17375)
-- Dependencies: 278
-- Data for Name: resource_server_scope; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4115 (class 0 OID 17415)
-- Dependencies: 281
-- Data for Name: resource_scope; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4135 (class 0 OID 17822)
-- Dependencies: 301
-- Data for Name: resource_server_perm_ticket; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4137 (class 0 OID 17864)
-- Dependencies: 303
-- Data for Name: resource_uris; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4138 (class 0 OID 17874)
-- Dependencies: 304
-- Data for Name: role_attribute; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4063 (class 0 OID 16487)
-- Dependencies: 229
-- Data for Name: scope_mapping; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.scope_mapping VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', '29bd82e8-81a2-41a3-945b-24d52d0ff7fb');
INSERT INTO public.scope_mapping VALUES ('12ba90f4-8c0e-4b54-b153-83546b842264', '5f88b600-062e-446b-b64c-3e2b7b599784');


--
-- TOC entry 4117 (class 0 OID 17445)
-- Dependencies: 283
-- Data for Name: scope_policy; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4065 (class 0 OID 16493)
-- Dependencies: 231
-- Data for Name: user_attribute; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4087 (class 0 OID 16930)
-- Dependencies: 253
-- Data for Name: user_consent; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4133 (class 0 OID 17797)
-- Dependencies: 299
-- Data for Name: user_consent_client_scope; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4068 (class 0 OID 16511)
-- Dependencies: 234
-- Data for Name: user_federation_provider; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4067 (class 0 OID 16506)
-- Dependencies: 233
-- Data for Name: user_federation_config; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4094 (class 0 OID 17042)
-- Dependencies: 260
-- Data for Name: user_federation_mapper; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4095 (class 0 OID 17047)
-- Dependencies: 261
-- Data for Name: user_federation_mapper_config; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4105 (class 0 OID 17210)
-- Dependencies: 271
-- Data for Name: user_group_membership; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4069 (class 0 OID 16516)
-- Dependencies: 235
-- Data for Name: user_required_action; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4070 (class 0 OID 16519)
-- Dependencies: 236
-- Data for Name: user_role_mapping; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.user_role_mapping VALUES ('5b626b3a-0e8d-4fd3-8027-a7d3542883fa', '0b10f923-a26c-4611-ac12-a34e53120978');
INSERT INTO public.user_role_mapping VALUES ('92130f4b-d563-4ca1-8191-511d26b95f2f', '0b10f923-a26c-4611-ac12-a34e53120978');


--
-- TOC entry 4082 (class 0 OID 16828)
-- Dependencies: 248
-- Data for Name: user_session_note; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4064 (class 0 OID 16490)
-- Dependencies: 230
-- Data for Name: username_login_failure; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 4072 (class 0 OID 16533)
-- Dependencies: 238
-- Data for Name: web_origins; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.web_origins VALUES ('383a3f97-efa5-4ca2-a0ee-a5b7314ba803', '+');


-- Completed on 2024-02-27 05:10:06

--
-- PostgreSQL database dump complete
--

