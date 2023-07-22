PGDMP                         {           postgres    15.3    15.3 A    z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            {           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            |           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            }           1262    5    postgres    DATABASE     j   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE postgres;
                postgres    false            ~           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3709                        2615    16610    moviez    SCHEMA        CREATE SCHEMA moviez;
    DROP SCHEMA moviez;
                postgres    false            �            1259    16611    genre    TABLE     z   CREATE TABLE moviez.genre (
    genre_id character varying(50) NOT NULL,
    genre_name character varying(50) NOT NULL
);
    DROP TABLE moviez.genre;
       moviez         heap    postgres    false    7            �            1259    16694    genre_movie    TABLE     �   CREATE TABLE moviez.genre_movie (
    gm_genre_id character varying(50) NOT NULL,
    gm_movie_id character varying(50) NOT NULL
);
    DROP TABLE moviez.genre_movie;
       moviez         heap    postgres    false    7            �            1259    16616    lang    TABLE     w   CREATE TABLE moviez.lang (
    lang_id character varying(50) NOT NULL,
    lang_name character varying(50) NOT NULL
);
    DROP TABLE moviez.lang;
       moviez         heap    postgres    false    7            �            1259    16704 
   lang_movie    TABLE     �   CREATE TABLE moviez.lang_movie (
    lm_lang_id character varying(50) NOT NULL,
    lm_movie_id character varying(50) NOT NULL
);
    DROP TABLE moviez.lang_movie;
       moviez         heap    postgres    false    7            �            1259    16663    lst    TABLE       CREATE TABLE moviez.lst (
    lst_id character varying(50) NOT NULL,
    lst_usr_id character varying(50) NOT NULL,
    lst_name character varying(50) NOT NULL,
    lst_private smallint DEFAULT 0 NOT NULL,
    lst_timestamp timestamp without time zone DEFAULT now() NOT NULL
);
    DROP TABLE moviez.lst;
       moviez         heap    postgres    false    7            �            1259    16669 	   lst_movie    TABLE     �   CREATE TABLE moviez.lst_movie (
    lst_id character varying(50) NOT NULL,
    movie_id character varying(50) NOT NULL,
    lst_movie_time time with time zone DEFAULT now() NOT NULL
);
    DROP TABLE moviez.lst_movie;
       moviez         heap    postgres    false    7            �            1259    16650    movie    TABLE     R  CREATE TABLE moviez.movie (
    movie_id character varying(50) NOT NULL,
    movie_name character varying(50) NOT NULL,
    movie_imdb character varying(70) NOT NULL,
    movie_year integer NOT NULL,
    movie_trailer character varying(70) NOT NULL,
    movie_img character varying(300) DEFAULT 'movie.jpg'::character varying NOT NULL
);
    DROP TABLE moviez.movie;
       moviez         heap    postgres    false    7            �            1259    16644    pers    TABLE     $  CREATE TABLE moviez.pers (
    pers_id character varying(50) NOT NULL,
    pers_fn character varying(50) NOT NULL,
    pers_ln character varying(50) NOT NULL,
    pers_imdb character varying(50) NOT NULL,
    pers_img character varying(300) DEFAULT 'actor.jpg'::character varying NOT NULL
);
    DROP TABLE moviez.pers;
       moviez         heap    postgres    false    7            �            1259    16689 
   pers_movie    TABLE     �   CREATE TABLE moviez.pers_movie (
    pm_pers_id character varying(50) NOT NULL,
    pm_movie_id character varying(50) NOT NULL,
    role smallint NOT NULL
);
    DROP TABLE moviez.pers_movie;
       moviez         heap    postgres    false    7            �            1259    16681    rating    TABLE     �   CREATE TABLE moviez.rating (
    rating_user_id character varying(50) NOT NULL,
    rating_movie_id character varying(50) NOT NULL,
    rating numeric NOT NULL,
    "time" time with time zone DEFAULT now() NOT NULL
);
    DROP TABLE moviez.rating;
       moviez         heap    postgres    false    7            �            1259    16621    serv    TABLE     w   CREATE TABLE moviez.serv (
    serv_id character varying(50) NOT NULL,
    serv_name character varying(50) NOT NULL
);
    DROP TABLE moviez.serv;
       moviez         heap    postgres    false    7            �            1259    16699 
   serv_movie    TABLE     �   CREATE TABLE moviez.serv_movie (
    sm_service_id character varying(50) NOT NULL,
    sm_movie_id character varying(50) NOT NULL
);
    DROP TABLE moviez.serv_movie;
       moviez         heap    postgres    false    7            �            1259    16656    usr    TABLE     O  CREATE TABLE moviez.usr (
    usr_id character varying(50) NOT NULL,
    usr_name character varying(50) NOT NULL,
    usr_mail character varying(50) NOT NULL,
    usr_passhash character varying(60) NOT NULL,
    usr_img character varying(300) DEFAULT 'user.jpg'::character varying NOT NULL,
    usr_role smallint DEFAULT 0 NOT NULL
);
    DROP TABLE moviez.usr;
       moviez         heap    postgres    false    7            �            1259    16675    watched    TABLE     �   CREATE TABLE moviez.watched (
    watched_user_id character varying(50) NOT NULL,
    watched_movie_id character varying(50) NOT NULL,
    watched_time timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE moviez.watched;
       moviez         heap    postgres    false    7            j          0    16611    genre 
   TABLE DATA           5   COPY moviez.genre (genre_id, genre_name) FROM stdin;
    moviez          postgres    false    216   |L       u          0    16694    genre_movie 
   TABLE DATA           ?   COPY moviez.genre_movie (gm_genre_id, gm_movie_id) FROM stdin;
    moviez          postgres    false    227   �M       k          0    16616    lang 
   TABLE DATA           2   COPY moviez.lang (lang_id, lang_name) FROM stdin;
    moviez          postgres    false    217   �N       w          0    16704 
   lang_movie 
   TABLE DATA           =   COPY moviez.lang_movie (lm_lang_id, lm_movie_id) FROM stdin;
    moviez          postgres    false    229   �O       p          0    16663    lst 
   TABLE DATA           W   COPY moviez.lst (lst_id, lst_usr_id, lst_name, lst_private, lst_timestamp) FROM stdin;
    moviez          postgres    false    222   YP       q          0    16669 	   lst_movie 
   TABLE DATA           E   COPY moviez.lst_movie (lst_id, movie_id, lst_movie_time) FROM stdin;
    moviez          postgres    false    223   	Q       n          0    16650    movie 
   TABLE DATA           g   COPY moviez.movie (movie_id, movie_name, movie_imdb, movie_year, movie_trailer, movie_img) FROM stdin;
    moviez          postgres    false    220   �Q       m          0    16644    pers 
   TABLE DATA           N   COPY moviez.pers (pers_id, pers_fn, pers_ln, pers_imdb, pers_img) FROM stdin;
    moviez          postgres    false    219   T       t          0    16689 
   pers_movie 
   TABLE DATA           C   COPY moviez.pers_movie (pm_pers_id, pm_movie_id, role) FROM stdin;
    moviez          postgres    false    226   �Y       s          0    16681    rating 
   TABLE DATA           Q   COPY moviez.rating (rating_user_id, rating_movie_id, rating, "time") FROM stdin;
    moviez          postgres    false    225   �[       l          0    16621    serv 
   TABLE DATA           2   COPY moviez.serv (serv_id, serv_name) FROM stdin;
    moviez          postgres    false    218   ]       v          0    16699 
   serv_movie 
   TABLE DATA           @   COPY moviez.serv_movie (sm_service_id, sm_movie_id) FROM stdin;
    moviez          postgres    false    228   �]       o          0    16656    usr 
   TABLE DATA           Z   COPY moviez.usr (usr_id, usr_name, usr_mail, usr_passhash, usr_img, usr_role) FROM stdin;
    moviez          postgres    false    221   �^       r          0    16675    watched 
   TABLE DATA           R   COPY moviez.watched (watched_user_id, watched_movie_id, watched_time) FROM stdin;
    moviez          postgres    false    224   �`       �           2606    16698    genre_movie genre_movie_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY moviez.genre_movie
    ADD CONSTRAINT genre_movie_pkey PRIMARY KEY (gm_genre_id, gm_movie_id);
 F   ALTER TABLE ONLY moviez.genre_movie DROP CONSTRAINT genre_movie_pkey;
       moviez            postgres    false    227    227            �           2606    16615    genre genre_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY moviez.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);
 :   ALTER TABLE ONLY moviez.genre DROP CONSTRAINT genre_pkey;
       moviez            postgres    false    216            �           2606    16708    lang_movie lang_movie_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY moviez.lang_movie
    ADD CONSTRAINT lang_movie_pkey PRIMARY KEY (lm_lang_id, lm_movie_id);
 D   ALTER TABLE ONLY moviez.lang_movie DROP CONSTRAINT lang_movie_pkey;
       moviez            postgres    false    229    229            �           2606    16620    lang lang_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY moviez.lang
    ADD CONSTRAINT lang_pkey PRIMARY KEY (lang_id);
 8   ALTER TABLE ONLY moviez.lang DROP CONSTRAINT lang_pkey;
       moviez            postgres    false    217            �           2606    16673    lst_movie lst_movie_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY moviez.lst_movie
    ADD CONSTRAINT lst_movie_pkey PRIMARY KEY (lst_id, movie_id);
 B   ALTER TABLE ONLY moviez.lst_movie DROP CONSTRAINT lst_movie_pkey;
       moviez            postgres    false    223    223            �           2606    16668    lst lst_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY moviez.lst
    ADD CONSTRAINT lst_pkey PRIMARY KEY (lst_id);
 6   ALTER TABLE ONLY moviez.lst DROP CONSTRAINT lst_pkey;
       moviez            postgres    false    222            �           2606    16654    movie movie_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY moviez.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (movie_id);
 :   ALTER TABLE ONLY moviez.movie DROP CONSTRAINT movie_pkey;
       moviez            postgres    false    220            �           2606    16851    pers_movie pers_movie_pk 
   CONSTRAINT     q   ALTER TABLE ONLY moviez.pers_movie
    ADD CONSTRAINT pers_movie_pk PRIMARY KEY (pm_pers_id, pm_movie_id, role);
 B   ALTER TABLE ONLY moviez.pers_movie DROP CONSTRAINT pers_movie_pk;
       moviez            postgres    false    226    226    226            �           2606    16649    pers pers_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY moviez.pers
    ADD CONSTRAINT pers_pkey PRIMARY KEY (pers_id);
 8   ALTER TABLE ONLY moviez.pers DROP CONSTRAINT pers_pkey;
       moviez            postgres    false    219            �           2606    16688    rating rating_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY moviez.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (rating_user_id, rating_movie_id);
 <   ALTER TABLE ONLY moviez.rating DROP CONSTRAINT rating_pkey;
       moviez            postgres    false    225    225            �           2606    16703    serv_movie serv_movie_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY moviez.serv_movie
    ADD CONSTRAINT serv_movie_pkey PRIMARY KEY (sm_service_id, sm_movie_id);
 D   ALTER TABLE ONLY moviez.serv_movie DROP CONSTRAINT serv_movie_pkey;
       moviez            postgres    false    228    228            �           2606    16625    serv serv_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY moviez.serv
    ADD CONSTRAINT serv_pkey PRIMARY KEY (serv_id);
 8   ALTER TABLE ONLY moviez.serv DROP CONSTRAINT serv_pkey;
       moviez            postgres    false    218            �           2606    16847    usr uq_mail 
   CONSTRAINT     J   ALTER TABLE ONLY moviez.usr
    ADD CONSTRAINT uq_mail UNIQUE (usr_mail);
 5   ALTER TABLE ONLY moviez.usr DROP CONSTRAINT uq_mail;
       moviez            postgres    false    221            �           2606    16845 
   usr uq_usr 
   CONSTRAINT     I   ALTER TABLE ONLY moviez.usr
    ADD CONSTRAINT uq_usr UNIQUE (usr_name);
 4   ALTER TABLE ONLY moviez.usr DROP CONSTRAINT uq_usr;
       moviez            postgres    false    221            �           2606    16662    usr usr_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY moviez.usr
    ADD CONSTRAINT usr_pkey PRIMARY KEY (usr_id);
 6   ALTER TABLE ONLY moviez.usr DROP CONSTRAINT usr_pkey;
       moviez            postgres    false    221            �           2606    16680    watched watched_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY moviez.watched
    ADD CONSTRAINT watched_pkey PRIMARY KEY (watched_user_id, watched_movie_id);
 >   ALTER TABLE ONLY moviez.watched DROP CONSTRAINT watched_pkey;
       moviez            postgres    false    224    224            �           2606    16709    genre_movie gm_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.genre_movie
    ADD CONSTRAINT gm_fk1 FOREIGN KEY (gm_genre_id) REFERENCES moviez.genre(genre_id) NOT VALID;
 <   ALTER TABLE ONLY moviez.genre_movie DROP CONSTRAINT gm_fk1;
       moviez          postgres    false    227    3502    216            �           2606    16714    genre_movie gm_fk2    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.genre_movie
    ADD CONSTRAINT gm_fk2 FOREIGN KEY (gm_movie_id) REFERENCES moviez.movie(movie_id) NOT VALID;
 <   ALTER TABLE ONLY moviez.genre_movie DROP CONSTRAINT gm_fk2;
       moviez          postgres    false    220    227    3510            �           2606    16719    lang_movie lm_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.lang_movie
    ADD CONSTRAINT lm_fk1 FOREIGN KEY (lm_lang_id) REFERENCES moviez.lang(lang_id) NOT VALID;
 ;   ALTER TABLE ONLY moviez.lang_movie DROP CONSTRAINT lm_fk1;
       moviez          postgres    false    217    3504    229            �           2606    16724    lang_movie lm_fk2    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.lang_movie
    ADD CONSTRAINT lm_fk2 FOREIGN KEY (lm_movie_id) REFERENCES moviez.movie(movie_id) NOT VALID;
 ;   ALTER TABLE ONLY moviez.lang_movie DROP CONSTRAINT lm_fk2;
       moviez          postgres    false    220    229    3510            �           2606    16729 
   lst lst_fk    FK CONSTRAINT     x   ALTER TABLE ONLY moviez.lst
    ADD CONSTRAINT lst_fk FOREIGN KEY (lst_usr_id) REFERENCES moviez.usr(usr_id) NOT VALID;
 4   ALTER TABLE ONLY moviez.lst DROP CONSTRAINT lst_fk;
       moviez          postgres    false    3516    222    221            �           2606    16734    lst_movie lstm_fk1    FK CONSTRAINT     |   ALTER TABLE ONLY moviez.lst_movie
    ADD CONSTRAINT lstm_fk1 FOREIGN KEY (lst_id) REFERENCES moviez.lst(lst_id) NOT VALID;
 <   ALTER TABLE ONLY moviez.lst_movie DROP CONSTRAINT lstm_fk1;
       moviez          postgres    false    222    223    3518            �           2606    16739    lst_movie lstm_fk2    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.lst_movie
    ADD CONSTRAINT lstm_fk2 FOREIGN KEY (movie_id) REFERENCES moviez.movie(movie_id) NOT VALID;
 <   ALTER TABLE ONLY moviez.lst_movie DROP CONSTRAINT lstm_fk2;
       moviez          postgres    false    220    223    3510            �           2606    16744    pers_movie pm_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.pers_movie
    ADD CONSTRAINT pm_fk1 FOREIGN KEY (pm_pers_id) REFERENCES moviez.pers(pers_id) NOT VALID;
 ;   ALTER TABLE ONLY moviez.pers_movie DROP CONSTRAINT pm_fk1;
       moviez          postgres    false    3508    226    219            �           2606    16749    pers_movie pm_fk2    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.pers_movie
    ADD CONSTRAINT pm_fk2 FOREIGN KEY (pm_movie_id) REFERENCES moviez.movie(movie_id) NOT VALID;
 ;   ALTER TABLE ONLY moviez.pers_movie DROP CONSTRAINT pm_fk2;
       moviez          postgres    false    3510    226    220            �           2606    16754    rating rating_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.rating
    ADD CONSTRAINT rating_fk1 FOREIGN KEY (rating_user_id) REFERENCES moviez.usr(usr_id) NOT VALID;
 ;   ALTER TABLE ONLY moviez.rating DROP CONSTRAINT rating_fk1;
       moviez          postgres    false    225    221    3516            �           2606    16759    rating rating_fk2    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.rating
    ADD CONSTRAINT rating_fk2 FOREIGN KEY (rating_movie_id) REFERENCES moviez.movie(movie_id) NOT VALID;
 ;   ALTER TABLE ONLY moviez.rating DROP CONSTRAINT rating_fk2;
       moviez          postgres    false    220    225    3510            �           2606    16764    serv_movie sm_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.serv_movie
    ADD CONSTRAINT sm_fk1 FOREIGN KEY (sm_service_id) REFERENCES moviez.serv(serv_id) NOT VALID;
 ;   ALTER TABLE ONLY moviez.serv_movie DROP CONSTRAINT sm_fk1;
       moviez          postgres    false    3506    228    218            �           2606    16769    serv_movie sm_fk2    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.serv_movie
    ADD CONSTRAINT sm_fk2 FOREIGN KEY (sm_movie_id) REFERENCES moviez.movie(movie_id) NOT VALID;
 ;   ALTER TABLE ONLY moviez.serv_movie DROP CONSTRAINT sm_fk2;
       moviez          postgres    false    3510    220    228            �           2606    16779    watched watched_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.watched
    ADD CONSTRAINT watched_fk1 FOREIGN KEY (watched_user_id) REFERENCES moviez.usr(usr_id) NOT VALID;
 =   ALTER TABLE ONLY moviez.watched DROP CONSTRAINT watched_fk1;
       moviez          postgres    false    224    3516    221            �           2606    16784    watched watched_fk2    FK CONSTRAINT     �   ALTER TABLE ONLY moviez.watched
    ADD CONSTRAINT watched_fk2 FOREIGN KEY (watched_movie_id) REFERENCES moviez.movie(movie_id) NOT VALID;
 =   ALTER TABLE ONLY moviez.watched DROP CONSTRAINT watched_fk2;
       moviez          postgres    false    224    3510    220            j   >  x���n\1Dk�_h�I����H�&I��/!x��k��Q��3ýus��M��쥂%Õut�g�_�[�%kr-0�dhc"� J�������l_~��;��S3�I��6@�J0y��=5$/���3U�e�Ծ��]2�5|;��q�Vi^�r���vT����k��W����M�{2�i��fΰq�aq���(|?��8c漊b�>���c��`��+;Kx{|��|ġ#��*�p���]��0Z?���(����o�2��v���dR��]r��缼���ػK�%��_|ؙAZ_:ȋr	?�+�����_Z(|(      u   �   x�����1D��^8-�`������
��z�#�w�q	�\ʃ`�[f�?�j[�`�-�B�8��x�4�}61�[� mI��Iw�Vdj��5�)j��/X��X�EO��,[�D`�9`�е_"�$-ٵݡKoO�I���*���n�+ҕ�>�1�	��g��;0�F/���|����y�W�W      k   �   x��1N1@�zr�$��� �z)i'fW�Fh��3�����Vj3hiݹ���z��e���~�)�1ìA�s �& ��&��6���X�_S�v�CX�p��a6��
.�.߶?`]�1`y)@T���Ў�3o�u����䓪2�y�W��ȑ�g��������{Ĺ,����� �Ť�<��|ظyb�f%;pS�3������ֺoo�v\|<����T[      w   �   x�����0�U.l�W��9���C8���XS����芀\U����������'0��t(x7�{�ړMG�BR�l��A�6�n�8������٠���o2��9��l�o����=���X �eW�5����c��7���
����:�l��F��e��L�V�HO����r5��1�?�A\~      p   �   x�U�9N1��>ſ��j����$^z$b��@dDV�\�b�qX썑a��5և���P��0σ���nL��:Kyϯ��EH���b���w��8�\Nج�r`�	l9&G-F}<��ֆ�X��0�9S�S���>�}�/���v�����W�� �4�      q   �   x��ιqA A���
W��X� ���HC>��&jw+P�sB�P`�"t'9���\a8r�*Mh?^D'{6������V$?�W|c��W�w�m6������5&����N4���V�$IP�	�+`
�R^�����<H���b�����$C      n   N  x���Ko�@F��Wd������&M !�&T������<	C��h�v�n���9�~DJ�I� �J J���p�P��5P��SLg��n�3�����s�U�e�Xe�i׫�/�ҵ����I+@J������;�K���ˏ�w��9K-�� q�8$BQ�  �C*�a¾���1��t>������4N�x��qۏ�a�&����h�-G��a��ۇ�F�!:.�p>`�1�iN4i�7ӆ<s�� r�+ò�L�$ˍ�<��G]��:kD0gkVk�y.�ȓ��~����R)!)UN �`T�J&@O�^�[�>&b�?�������,@�q@��D�ŀ�F��8�����y�*.��֣[���D܋�ot�*z	$�R*	`V�b�]�Q�j�p
��P�3`2+2���
��]=��\�����\r�O����$�>��n~��B��@AAE��/}��!���h������
�8���O�h���8^��S2��w���7�;JY�!��Y4=LXkBH��l����:sĈ�BT�bR��K_�Yl���˯TU2��I]b"�����~����K嚥3���f���	��F�      m   �  x��V�nG<����HK���)z"�M;�'1��+mD�˕d��������`z 5�]�U�CVX[�R�Q![@Ϗ*Ɛ��٘j�S7M��4�7ߟ�<<<w���˰:�ӊN�����O�>�0R�x���V9�1އ���_��ZG�W�l�&I0��H��^asY�X�7�8���u��t�Zh	�� ��.kܡ�w7���COqA�8��e7�>�]Ә��w�ғ-)�1�&�x�!ex<��N��"��i�ڼ�i8�͠�s�*8ң�Y	[�8�|�1�����x>����=���Q��o
�]S�vK��r@�J�MIe�u��#�m~�%��9���zq�Ɖƃ:j�'k�q(��vn�v�qw�3COO��t�٫�Y0�+xW*hl�`lٜ�S��7�T�RK�{2��<8�18����Q"��6x�r���m��N٠EqՑ��M�,�$�Vj��UJ$d9�̕�9&M�h0	d$�dJ`s*Y��H�]m����|�$Cؓ�&� ʙक�H�	i��o�!�1����r�h3u�i!
�?�^[�B�,�1��\R Ē;W�V5���9O�-z4�D�j#��7���|�X�'���K����i˨-��RZ ��OM��XY�E��2�����������<��=%�X:`�5OU)�-�8~��>R>�,<�:3��{���&WI�\smi���y���n�|��A��@�=����/�	.��x.}O�YK��IA���-�`xE-�I��W5ҧ�E���1���4W�X_�ρ�L����31��P�� O�qF�Y3d������W-��j;�oR��%kp^XQ}ҺPs��j����/w�>~��3������C�C#�E�a�����T!���le!i�\Bŷ>�s�\t�������;�?�(�'�
l��h�����B�k�y$�ؖ�����@�l��E�Z�@㒙p#��`�����,	���lJ�6�!�R\��eW��1������\	/S�����`>)�C_��U ���a�:U3���J�f&����Y����4s�#��)��(!��5o�lߔRFP�-B�%��G̊Ư��ٷθ9� �	sa{��[?��������t,]��W�s�����C���.	Ek��"z�.l������~V�Yŷ�ٲ|L���u%���4����0��nN����ā�{	Ƒ㻌�lvB8A��r�L��Ɲ���7)'䞘���II��#,>س�ן����K�Xڳ������۫����x_�o������W6y��w��qkx�(]eK��kg�����5!{=��{��[.�����O$�1h(�p�� g;��N	~;��2��ʳ�5Sd�$���L�z��_�ͦ�������}R�v�˗n2e	�3�v���<�      t   $  x����$;E�]�02������a�j�׋Z��1�=-����Cl4��r�����V����Z�|7�#^����7��+���c/Xx�)a��|�e��'�'�I��S4p�����W�Cs��<b�T&آՃ�XӧT����3�.ٰ�,Pɂɗ�s�M}�CCí1�r�r65����/zn�����k�4�W��̍E��~&\��ap�\�6�ok��o�$�}g$Թ�B�x�l_�n��Am��WV���~:NZ��^�+���X�K}���ft�ud(�u�C��E��:(��ݫ�|@t	�3eEG��hq��� ��j��$X7Tj�	�=����T�ݗV狭zF��<����pm=o�/Xr���*dgЮ��r^�Y
���;p���(o��g���EO�P!oY����-P�Uρ{�6�k��b��T�
v�����,&r:�����|�+���۫�ʪu��D��ޡ�.��l�墊`�a7R�ͽS��D��>g�o,|��崹;��#�۽a��Z�����������<~#�9      s     x���ˍ�0�s��B���\�\����I0�{
�#A������ c��!R{�ܵ���'��;�-k��M����K/������W�/z�üs>�L���@�_�M/.�}�����蚧Zn��
�{A�u��`%Ds��#r�n�H�0�(XG<9�����ěb�p��?}�R3X՟��	�`[O�E�>��z�:k���<����(�p�Z��3�nk�ޡ���zz�zF�����lM� �>��z��V���}߿C��      l   �   x��KN1 ����##;�$�e�n��M���Hm��J�ӓ<=-�n�H@���cn��6z]����y=��Oa*���[�>t7�*2�X����>�nu�2y�mPC+e٬�r��o��THFa��	���$D��rzz;��{b3���!F�X�U�(��䱼�O��{�xL)�xa?�      v   �   x���ɕ�@�v.����\X��CB�]*QhQ��8��8Ф�集�0t��i��@dL86t�Yn;��U�t�\L �
�R�e�{�[�~#UH���[ =�!��##�^�WH�	mRt��g'2Ӛ���O���e�p`*�8��3�rۯm�F�g �;����'ҧ���3/����D�j�Qi�����{���lta      o   �  x�E�I��@���;8$�6��}�@<ˣHV��,ol�>�����z��cF;���Pf�j�E#�}�;MeKҲ�U�ޛ�2��|;�U����ޑ&Jg;3;����#���//�s�ܥ���y����*���i(�Ƈ@h��%§�=�q�Vx5M�m�9T��,^����vTxW��Z����؋�oF�kq����@0�)����^jY46��z�LJi2Y˯�r}�i)��dxMµ�k�7ɬ9�j+�f�����T)�%J���H�g
ԲͲ��������gj�q���+�rWh�<5�8�&A�K7u�yU��e#
00�q`x��p�i�U��;�sN��0΁��o�ip� �2'���uG�}��l�ś}ňw^�������qT4^��:���7in�׷��-:�Vո��è���v� *��      r     x��ѻm�@�ت�r��Kn-N��	�]fGR>�����s�;L,���(��v��Ie|e�"+P.ic0��Q&���#`�SU��gx���Ǿ�HDΰy��t�ވv��1�S����������c��	m� 3%d"/���P��+yU:5��o;��\i�����m�Xv�+xi�<��@=_q'�q�r^ӝ�nL��y�0���>���joG��"��h�}	A�bkK�ay��{7�Jv���9����ߪo     