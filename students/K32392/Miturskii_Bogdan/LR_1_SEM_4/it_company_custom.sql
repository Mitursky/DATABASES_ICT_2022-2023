PGDMP     1    +                {         
   it_company    15.2    15.2 R    f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            h           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            i           1262    16400 
   it_company    DATABASE     l   CREATE DATABASE it_company WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE it_company;
                postgres    false                        2615    16446    main    SCHEMA        CREATE SCHEMA main;
    DROP SCHEMA main;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            j           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    5            �            1259    16447    customer    TABLE       CREATE TABLE main.customer (
    id integer NOT NULL,
    organization_name character varying(80) NOT NULL,
    organization_address character varying(80) NOT NULL,
    contacts character varying(12) NOT NULL,
    full_name character varying(70) NOT NULL
);
    DROP TABLE main.customer;
       main         heap    postgres    false    6            �            1259    16450    customer_id_seq    SEQUENCE     �   ALTER TABLE main.customer ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME main.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            main          postgres    false    215    6            �            1259    16451 
   department    TABLE     �   CREATE TABLE main.department (
    id integer NOT NULL,
    department_title text NOT NULL,
    telephone character varying(20) NOT NULL
);
    DROP TABLE main.department;
       main         heap    postgres    false    6            �            1259    16454    department_id_seq    SEQUENCE     �   ALTER TABLE main.department ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME main.department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            main          postgres    false    217    6            �            1259    16455    employee    TABLE     b   CREATE TABLE main.employee (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE main.employee;
       main         heap    postgres    false    6            �            1259    16458    employee_id_seq    SEQUENCE     �   ALTER TABLE main.employee ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME main.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            main          postgres    false    6    219            �            1259    16459    employee_position    TABLE     �   CREATE TABLE main.employee_position (
    id integer NOT NULL,
    job_title text NOT NULL,
    salary money NOT NULL,
    category character varying(255) NOT NULL
);
 #   DROP TABLE main.employee_position;
       main         heap    postgres    false    6            �            1259    16462    employee_position_id_seq    SEQUENCE     �   ALTER TABLE main.employee_position ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME main.employee_position_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            main          postgres    false    6    221            �            1259    16469    implementation    TABLE       CREATE TABLE main.implementation (
    id integer NOT NULL,
    id_task integer NOT NULL,
    id_employee integer NOT NULL,
    execution_status character varying(124) NOT NULL,
    due_date_from date NOT NULL,
    due_date_to date NOT NULL,
    reward money NOT NULL
);
     DROP TABLE main.implementation;
       main         heap    postgres    false    6            �            1259    16472    implementation_id_seq    SEQUENCE     �   ALTER TABLE main.implementation ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME main.implementation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            main          postgres    false    6    223            �            1259    16473    project    TABLE     �  CREATE TABLE main.project (
    id integer NOT NULL,
    id_customer integer NOT NULL,
    id_manager integer NOT NULL,
    id_supervisor integer NOT NULL,
    title character varying(255) NOT NULL,
    due_date_from date NOT NULL,
    due_date_to date NOT NULL,
    execution_status character varying(124) NOT NULL,
    payment_state character varying(124) NOT NULL,
    price money NOT NULL,
    contracts_employees text[],
    contract_customer text
);
    DROP TABLE main.project;
       main         heap    postgres    false    6            �            1259    16476    project_id_seq    SEQUENCE     �   ALTER TABLE main.project ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME main.project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            main          postgres    false    225    6            �            1259    16477    staffing_table    TABLE     �   CREATE TABLE main.staffing_table (
    id integer NOT NULL,
    id_employee_position integer NOT NULL,
    id_employee integer NOT NULL,
    id_department integer NOT NULL,
    number_of_positions integer NOT NULL
);
     DROP TABLE main.staffing_table;
       main         heap    postgres    false    6            �            1259    16480    staff_member_id_seq    SEQUENCE     �   ALTER TABLE main.staffing_table ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME main.staff_member_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            main          postgres    false    6    227            �            1259    16481    task    TABLE     c  CREATE TABLE main.task (
    id integer NOT NULL,
    id_project integer NOT NULL,
    comment text NOT NULL,
    price numeric(12,2) NOT NULL,
    due_date_from date NOT NULL,
    due_date_to date NOT NULL,
    execution_status character varying(30) NOT NULL,
    id_inspector integer NOT NULL,
    execution_schedule text,
    execution_control text
);
    DROP TABLE main.task;
       main         heap    postgres    false    6            �            1259    16486    task_id_seq    SEQUENCE     �   ALTER TABLE main.task ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME main.task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            main          postgres    false    6    229            T          0    16447    customer 
   TABLE DATA                 main          postgres    false    215   tc       V          0    16451 
   department 
   TABLE DATA                 main          postgres    false    217   �f       X          0    16455    employee 
   TABLE DATA                 main          postgres    false    219   }g       Z          0    16459    employee_position 
   TABLE DATA                 main          postgres    false    221   Xi       \          0    16469    implementation 
   TABLE DATA                 main          postgres    false    223   aj       ^          0    16473    project 
   TABLE DATA                 main          postgres    false    225   �l       `          0    16477    staffing_table 
   TABLE DATA                 main          postgres    false    227   �n       b          0    16481    task 
   TABLE DATA                 main          postgres    false    229   �o       k           0    0    customer_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('main.customer_id_seq', 12, true);
          main          postgres    false    216            l           0    0    department_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('main.department_id_seq', 10, true);
          main          postgres    false    218            m           0    0    employee_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('main.employee_id_seq', 9, true);
          main          postgres    false    220            n           0    0    employee_position_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('main.employee_position_id_seq', 10, true);
          main          postgres    false    222            o           0    0    implementation_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('main.implementation_id_seq', 40, true);
          main          postgres    false    224            p           0    0    project_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('main.project_id_seq', 9, true);
          main          postgres    false    226            q           0    0    staff_member_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('main.staff_member_id_seq', 10, true);
          main          postgres    false    228            r           0    0    task_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('main.task_id_seq', 10, true);
          main          postgres    false    230            �           2606    16623    department correct_telephone    CHECK CONSTRAINT     �   ALTER TABLE main.department
    ADD CONSTRAINT correct_telephone CHECK (((telephone)::text ~~ like_escape('+___________'::text, ''::text))) NOT VALID;
 ?   ALTER TABLE main.department DROP CONSTRAINT correct_telephone;
       main          postgres    false    217    217            �           2606    16494    customer customer_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY main.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY main.customer DROP CONSTRAINT customer_pkey;
       main            postgres    false    215            �           2606    16487    task date_check    CHECK CONSTRAINT     f   ALTER TABLE main.task
    ADD CONSTRAINT date_check CHECK ((due_date_from <= due_date_to)) NOT VALID;
 2   ALTER TABLE main.task DROP CONSTRAINT date_check;
       main          postgres    false    229    229    229    229            �           2606    16488    project date_check    CHECK CONSTRAINT     i   ALTER TABLE main.project
    ADD CONSTRAINT date_check CHECK ((due_date_from <= due_date_to)) NOT VALID;
 5   ALTER TABLE main.project DROP CONSTRAINT date_check;
       main          postgres    false    225    225    225    225            �           2606    16495    implementation date_check    CHECK CONSTRAINT     p   ALTER TABLE main.implementation
    ADD CONSTRAINT date_check CHECK ((due_date_from <= due_date_to)) NOT VALID;
 <   ALTER TABLE main.implementation DROP CONSTRAINT date_check;
       main          postgres    false    223    223    223    223            �           2606    16497    department department_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY main.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY main.department DROP CONSTRAINT department_pkey;
       main            postgres    false    217            �           2606    16499    employee employee_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY main.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY main.employee DROP CONSTRAINT employee_pkey;
       main            postgres    false    219            �           2606    16501 (   employee_position employee_position_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY main.employee_position
    ADD CONSTRAINT employee_position_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY main.employee_position DROP CONSTRAINT employee_position_pkey;
       main            postgres    false    221            �           2606    16625    project execution_status_check    CHECK CONSTRAINT     [  ALTER TABLE main.project
    ADD CONSTRAINT execution_status_check CHECK ((((execution_status)::character varying)::text = ANY ((ARRAY['In progress'::character varying, 'Completed successfully'::character varying, 'Completed with errors'::character varying, 'Cancelled'::character varying, 'Not started'::character varying])::text[]))) NOT VALID;
 A   ALTER TABLE main.project DROP CONSTRAINT execution_status_check;
       main          postgres    false    225    225            �           2606    16627 %   implementation execution_status_check    CHECK CONSTRAINT     b  ALTER TABLE main.implementation
    ADD CONSTRAINT execution_status_check CHECK ((((execution_status)::character varying)::text = ANY ((ARRAY['In progress'::character varying, 'Completed successfully'::character varying, 'Completed with errors'::character varying, 'Cancelled'::character varying, 'Not started'::character varying])::text[]))) NOT VALID;
 H   ALTER TABLE main.implementation DROP CONSTRAINT execution_status_check;
       main          postgres    false    223    223            �           2606    16630    task execution_status_check    CHECK CONSTRAINT     v  ALTER TABLE main.task
    ADD CONSTRAINT execution_status_check CHECK ((((execution_status)::character varying)::text = ANY (ARRAY[('In progress'::character varying)::text, ('Completed successfully'::character varying)::text, ('Completed with errors'::character varying)::text, ('Cancelled'::character varying)::text, ('Not started'::character varying)::text]))) NOT VALID;
 >   ALTER TABLE main.task DROP CONSTRAINT execution_status_check;
       main          postgres    false    229    229            �           2606    16508 "   implementation implementation_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY main.implementation
    ADD CONSTRAINT implementation_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY main.implementation DROP CONSTRAINT implementation_pkey;
       main            postgres    false    223            �           2606    16628 0   staffing_table only_positive_number_of_positions    CHECK CONSTRAINT     �   ALTER TABLE main.staffing_table
    ADD CONSTRAINT only_positive_number_of_positions CHECK (((number_of_positions)::numeric >= (0)::numeric)) NOT VALID;
 S   ALTER TABLE main.staffing_table DROP CONSTRAINT only_positive_number_of_positions;
       main          postgres    false    227    227            �           2606    16489    task only_positive_price    CHECK CONSTRAINT     s   ALTER TABLE main.task
    ADD CONSTRAINT only_positive_price CHECK (((price)::numeric >= (0)::numeric)) NOT VALID;
 ;   ALTER TABLE main.task DROP CONSTRAINT only_positive_price;
       main          postgres    false    229    229            �           2606    16511    project only_positive_price    CHECK CONSTRAINT     v   ALTER TABLE main.project
    ADD CONSTRAINT only_positive_price CHECK (((price)::numeric >= (0)::numeric)) NOT VALID;
 >   ALTER TABLE main.project DROP CONSTRAINT only_positive_price;
       main          postgres    false    225    225            �           2606    16514 #   implementation only_positive_reward    CHECK CONSTRAINT        ALTER TABLE main.implementation
    ADD CONSTRAINT only_positive_reward CHECK (((reward)::numeric >= (0)::numeric)) NOT VALID;
 F   ALTER TABLE main.implementation DROP CONSTRAINT only_positive_reward;
       main          postgres    false    223    223            �           2606    16510 &   employee_position only_positive_salary    CHECK CONSTRAINT     �   ALTER TABLE main.employee_position
    ADD CONSTRAINT only_positive_salary CHECK (((salary)::numeric >= (0)::numeric)) NOT VALID;
 I   ALTER TABLE main.employee_position DROP CONSTRAINT only_positive_salary;
       main          postgres    false    221    221            �           2606    16626    project payment_state    CHECK CONSTRAINT     �   ALTER TABLE main.project
    ADD CONSTRAINT payment_state CHECK ((((payment_state)::character varying)::text = ANY ((ARRAY['In progress'::character varying, 'Received'::character varying, 'Not sent'::character varying])::text[]))) NOT VALID;
 8   ALTER TABLE main.project DROP CONSTRAINT payment_state;
       main          postgres    false    225    225            �           2606    16513    project project_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY main.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY main.project DROP CONSTRAINT project_pkey;
       main            postgres    false    225            �           2606    16516     staffing_table staff_member_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY main.staffing_table
    ADD CONSTRAINT staff_member_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY main.staffing_table DROP CONSTRAINT staff_member_pkey;
       main            postgres    false    227            �           2606    16518    task task_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY main.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY main.task DROP CONSTRAINT task_pkey;
       main            postgres    false    229            �           2606    16519    customer telephone_check    CHECK CONSTRAINT     �   ALTER TABLE main.customer
    ADD CONSTRAINT telephone_check CHECK (((contacts)::text ~~ like_escape('+___________'::text, ''::text))) NOT VALID;
 ;   ALTER TABLE main.customer DROP CONSTRAINT telephone_check;
       main          postgres    false    215    215            �           1259    16521    fki_customer_fk    INDEX     H   CREATE INDEX fki_customer_fk ON main.project USING btree (id_customer);
 !   DROP INDEX main.fki_customer_fk;
       main            postgres    false    225            �           1259    16522    fki_department_fk    INDEX     S   CREATE INDEX fki_department_fk ON main.staffing_table USING btree (id_department);
 #   DROP INDEX main.fki_department_fk;
       main            postgres    false    227            �           1259    16523    fki_employee_fk    INDEX     O   CREATE INDEX fki_employee_fk ON main.staffing_table USING btree (id_employee);
 !   DROP INDEX main.fki_employee_fk;
       main            postgres    false    227            �           1259    16524    fki_employee_position_fk    INDEX     a   CREATE INDEX fki_employee_position_fk ON main.staffing_table USING btree (id_employee_position);
 *   DROP INDEX main.fki_employee_position_fk;
       main            postgres    false    227            �           1259    16525    fki_id_department_fk    INDEX     V   CREATE INDEX fki_id_department_fk ON main.staffing_table USING btree (id_department);
 &   DROP INDEX main.fki_id_department_fk;
       main            postgres    false    227            �           1259    16526    fki_id_emplyee_fk    INDEX     Q   CREATE INDEX fki_id_emplyee_fk ON main.staffing_table USING btree (id_employee);
 #   DROP INDEX main.fki_id_emplyee_fk;
       main            postgres    false    227            �           1259    16527    fki_id_job_title_fk    INDEX     \   CREATE INDEX fki_id_job_title_fk ON main.staffing_table USING btree (id_employee_position);
 %   DROP INDEX main.fki_id_job_title_fk;
       main            postgres    false    227            �           1259    16528    fki_id_manager_fk    INDEX     I   CREATE INDEX fki_id_manager_fk ON main.project USING btree (id_manager);
 #   DROP INDEX main.fki_id_manager_fk;
       main            postgres    false    225            �           1259    16529    fki_id_project_fk    INDEX     F   CREATE INDEX fki_id_project_fk ON main.task USING btree (id_project);
 #   DROP INDEX main.fki_id_project_fk;
       main            postgres    false    229            �           1259    16530    fki_id_supervisor_fk    INDEX     O   CREATE INDEX fki_id_supervisor_fk ON main.project USING btree (id_supervisor);
 &   DROP INDEX main.fki_id_supervisor_fk;
       main            postgres    false    225            �           1259    16532    fki_n    INDEX     =   CREATE INDEX fki_n ON main.project USING btree (id_manager);
    DROP INDEX main.fki_n;
       main            postgres    false    225            �           2606    16534    project id_customer_fk    FK CONSTRAINT     �   ALTER TABLE ONLY main.project
    ADD CONSTRAINT id_customer_fk FOREIGN KEY (id_customer) REFERENCES main.customer(id) NOT VALID;
 >   ALTER TABLE ONLY main.project DROP CONSTRAINT id_customer_fk;
       main          postgres    false    3490    225    215            �           2606    16539    staffing_table id_department_fk    FK CONSTRAINT     �   ALTER TABLE ONLY main.staffing_table
    ADD CONSTRAINT id_department_fk FOREIGN KEY (id_department) REFERENCES main.department(id) NOT VALID;
 G   ALTER TABLE ONLY main.staffing_table DROP CONSTRAINT id_department_fk;
       main          postgres    false    3492    217    227            �           2606    16544    staffing_table id_employee_fk    FK CONSTRAINT     �   ALTER TABLE ONLY main.staffing_table
    ADD CONSTRAINT id_employee_fk FOREIGN KEY (id_employee) REFERENCES main.employee(id) NOT VALID;
 E   ALTER TABLE ONLY main.staffing_table DROP CONSTRAINT id_employee_fk;
       main          postgres    false    3494    227    219            �           2606    16618    implementation id_employee_fk    FK CONSTRAINT     �   ALTER TABLE ONLY main.implementation
    ADD CONSTRAINT id_employee_fk FOREIGN KEY (id_employee) REFERENCES main.employee(id) NOT VALID;
 E   ALTER TABLE ONLY main.implementation DROP CONSTRAINT id_employee_fk;
       main          postgres    false    219    223    3494            �           2606    16554 &   staffing_table id_employee_position_fk    FK CONSTRAINT     �   ALTER TABLE ONLY main.staffing_table
    ADD CONSTRAINT id_employee_position_fk FOREIGN KEY (id_employee_position) REFERENCES main.employee_position(id) NOT VALID;
 N   ALTER TABLE ONLY main.staffing_table DROP CONSTRAINT id_employee_position_fk;
       main          postgres    false    3496    227    221            �           2606    16603    task id_inspector_fk    FK CONSTRAINT     �   ALTER TABLE ONLY main.task
    ADD CONSTRAINT id_inspector_fk FOREIGN KEY (id_inspector) REFERENCES main.employee(id) NOT VALID;
 <   ALTER TABLE ONLY main.task DROP CONSTRAINT id_inspector_fk;
       main          postgres    false    219    229    3494            �           2606    16608    project id_manager_fk    FK CONSTRAINT     �   ALTER TABLE ONLY main.project
    ADD CONSTRAINT id_manager_fk FOREIGN KEY (id_manager) REFERENCES main.employee(id) NOT VALID;
 =   ALTER TABLE ONLY main.project DROP CONSTRAINT id_manager_fk;
       main          postgres    false    219    225    3494            �           2606    16564    task id_project_fk    FK CONSTRAINT     |   ALTER TABLE ONLY main.task
    ADD CONSTRAINT id_project_fk FOREIGN KEY (id_project) REFERENCES main.project(id) NOT VALID;
 :   ALTER TABLE ONLY main.task DROP CONSTRAINT id_project_fk;
       main          postgres    false    3504    225    229            �           2606    16613    project id_supervisor_fk    FK CONSTRAINT     �   ALTER TABLE ONLY main.project
    ADD CONSTRAINT id_supervisor_fk FOREIGN KEY (id_supervisor) REFERENCES main.employee(id) NOT VALID;
 @   ALTER TABLE ONLY main.project DROP CONSTRAINT id_supervisor_fk;
       main          postgres    false    225    3494    219            �           2606    16584    implementation id_task_fk    FK CONSTRAINT     }   ALTER TABLE ONLY main.implementation
    ADD CONSTRAINT id_task_fk FOREIGN KEY (id_task) REFERENCES main.task(id) NOT VALID;
 A   ALTER TABLE ONLY main.implementation DROP CONSTRAINT id_task_fk;
       main          postgres    false    3515    223    229            T   E  x���Ms�0���{K;�t0�LO|��-��ϛb�XYbd���ݕ��No��x���Nn�x������	�.��J���K��'��v���o��|�9v�)�����|���.NL]�1����!�V���-,Eu�9]z�׆��d:�E��9~�U~���U��}<���HaNڰJhE��_A,�.�x��a��J�0�As��:�O��%���;��3W5o(���C(ߊ,g\���[�Rg���,ʠ�����kvlhV���)�!�;�2�d����~`bUqs2�t���(����40���,#�WL	��W!�3���Z�9����tK~d?���|�4fL�N��`�0�9f��x�C�eM-�u�ǰ�>nKwmY<�Ċ�UUΟ��.R�0�)��(�Ϩ�3�?o��d����j��by�)�>�X�-3��W׬Q�?b����IUWm9'���(G�H�
��#7�"�zx䂗�}���V(�`�sc.mA�8��GyR�.%�C�8a��}-�'H�9�̍�p<u��Q�'��>����Ú�L�@r��9z1�Yd��թ�3c�x
�_:�X�*'"O� 6j)YYvհ����Κ}8�9�#l�)�|yuQ�Yw臣I3�-��:g����\VѨ;��BJK��wm�on�k���8Q��p�BD�������i�E����3h�A<2!���)��,�Έ����4��[�w��=^�Ė=���hja���eI]kə�ƫ���Κ}P�̙���8Y����.�G��g�f7^-�Κ}4��n���ρ�ʱxkm$[�>ؙ�enm���Z��삸��eK5s      V   �   x���v
Q���W�M���KI-H,*�M�+Q�s
�t��sW�q�Us�	u���
�:
���9��
.pM�@1mC#cS3sKCuMk.O
�0�皗����Z����n�"#Jm2��Q�����Z�_Z���/�eƔ�f4�-3/1/9��%& [�� �y�      X   �  x����n�@E��
��Ea�iӠ+�l�~ �#K�f=l�!�d�ׇ#�Aٍ��K��jݔ���v�&��p%��sY�լZϡyi��
�����m�C�	�~�a����Q�Ϥ<��4�{�cM���A������X:�W��;��f�Y�۱U��Up�gFx�ᢤ=���]`�W���MxMh�L��س��:� %6����� �� �_�Z��	��nZt��c�3*y�p���Ǔ6�l2������v?���$e	d��j��[P�(���(^��laj1�)yCQ9��mdɏ��hC��о�Ҹ��v|愰@k��<�-۝G"�jy6<7r�K'P��p�G%3�Q��W��I�'�бڠU7L�Y`l��;ý�W�,Y�#z�����ej�f/7��%9t'��tJ;�d�<�`*�՚�'3�Ķ`���p�6����fn4zO���      Z   �   x����J�0�{�bB�%�v/��p���O2ı�IISŷ7��R�h/!���˄�\ˢ��;h�򒚶v_Dϭ�l��a��E�nT~�I�r��ãW��H��X�O��d-B����!��U���]�R�^�'zɕe�q��[�yck����<�XS���8�A����Cj&u���9��뽉�n�X�mF;�ؿ�3�"��c\g�Qͦ�edC3i����w
�+�vο����ߧ>�t�|��֣      \   G  x���Mk�@���{(89�V��TS���Ѹjk�� +�����Mzh�"+����3�z�Y���^m��qw�ǧ�96ݸ}'���u}[�����f��&>�_��F\)U<��U?�Ӹ�����f!˅�/�t�O���R�?~����@�2�7�nߴmF�J*����9��B��t�+�-���񻠿�}�f�����q\���(c5���bt�+������e���
_��u'����М�+? I��M��
�p�+~(DH�H%��K-�E��A
$B�x��*"�d� K��C;�N��=���s��yE�7\=��!�1����*ϕ�]�g	r�u\#J��H�Sk�i`��������DQML`�I�$�j� lU��c��>��%F�%����	��W��)Is�r�:D����\�7�\�@)"��4Ӽ�¹��/��@B���c�z�T5��_������%�k.f�g9�ʳZ�����J{^`�$Ȁžț���%<�3�t�2¨�xs�$g�
e�ZD��{XI�#���RI�۳�_~x�      ^   �  x���]k�0���AnP%��Vv��jܦC��K����h����K�b�������}z�I�l�/V��Vs����K?Ӏ���_,Ȑ��`y�\�7`ݿ����%8G�Z ��|5n���\`��Mh71,�S(��	MS�<�-a�K?�^�d�ݶn�bP�̶�C��=M@yU��F�K�9N���Փ�2D��ʋ�/!et�Cp��C�g;��+�
2WO�`�`8�	�0�`<y|$����y۱'@�$N�3����FL�8z���ū���8�H$C�d+\By�(�a�?}ŉ�~z�4����6w��x�0� |%I�lE��g���c�6��Q�L~%
��:T�1R
����oS+)��	�&�Q%^���d%?��a%F����351��+��y�Ų%���)Wɔ��]�Ą0������X�59-���M+'��A*A (�����*Wa���D���peB�f��� �      `     x����J�@��y��T$s&�tU0Ȁ���BW�-�����s4>���r�w�؏�0Y짍]�����6����6�����v�c�d�n��ۮ�_;~G��Ζ�~����ט�x���l�b^�l�b^��1"~uڬ��k�f��_�6ke�|��rA�ٯ�1�H�D}�ǂ ǒ KǊ +ǚ]�:��nty,��q���#x,z���YR�й_n�]�#�_@�@gP.�9�t�Aˮu�	y�:�y&�>+�      b   A  x���]o�0���
�u�h;�hWR�%@K���j��jڿ_Jz�ĢZ|S�T"��{�Q��,���]������7�,��,�ѐūx�ٲ7Z��1��;��K��&���.;��qmŧ��a_	㒎l9
w�=��ʒáv�O��k��&�/)�q�g��|�q���3��/mv���朞�}O�<ya��ͦ��Hӿ��E�}��w���_:}�� ���?o�+K�l�����ҧJ�������4�& ��׻M��ɋ�Y P٠�̖{���$ްY`��Q���!_g�I'�.������0��n��Φ8�hV� ��ݴǹ����6l�l��b)s؞YlA���AV��~:�+�7�Ц�[j�mo+J�%�P���Ds�	������8��ݩ��:�?V��B�4���^/�N�/X#��v�A8�#e��l�'�Q�HCgb	��RVC5r��c�k�SՕ��0e9T#���3a�E�i8mtN	SVF5�k,��nBu���1UdLY���7������t~PdLY���YpNx���W;(̚!SG���ڌ�f�Z�S�FE_t���b�s���1WG�8n*����T7���^Aʈ�ǭ��2���`
\�2a8t8��"0�K�[j�L�=*�C�&�g�G�{��Y�{R�.��w��B�4�6�V�|��Dx�	d+*[i�j�Y�/:�*�,�3�=k�\|����	á��.j�(�^$��$xx���U!ás��/Jx���]��e��^���h%B�J8��4���^w각v"�D�r���	�넋�y���     