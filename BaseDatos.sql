PGDMP     -    3                |         
   persona-db    14.12    14.1 (                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    139001 
   persona-db    DATABASE     p   CREATE DATABASE "persona-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "persona-db";
                postgres    false            �            1259    142932    cliente    TABLE     �   CREATE TABLE public.cliente (
    id integer NOT NULL,
    contrasena character varying(255),
    persona_id integer,
    estado boolean
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    142939    cliente_seq    SEQUENCE     u   CREATE SEQUENCE public.cliente_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cliente_seq;
       public          postgres    false            �            1259    142919    cuenta    TABLE     �   CREATE TABLE public.cuenta (
    id integer NOT NULL,
    numero_cuenta character varying(255),
    saldo_inicial double precision,
    tipo_cuenta character varying(255),
    id_cliente integer,
    estado boolean
);
    DROP TABLE public.cuenta;
       public         heap    postgres    false            �            1259    142926 
   cuenta_seq    SEQUENCE     t   CREATE SEQUENCE public.cuenta_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.cuenta_seq;
       public          postgres    false            �            1259    139002    estados    TABLE     q   CREATE TABLE public.estados (
    id integer NOT NULL,
    nombre character varying(255),
    id_pais integer
);
    DROP TABLE public.estados;
       public         heap    postgres    false            �            1259    139019    estados_seq    SEQUENCE     u   CREATE SEQUENCE public.estados_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.estados_seq;
       public          postgres    false            �            1259    142945 
   movimiento    TABLE     �   CREATE TABLE public.movimiento (
    id integer NOT NULL,
    fecha timestamp(6) without time zone,
    saldo double precision,
    valor double precision,
    id_cuenta integer
);
    DROP TABLE public.movimiento;
       public         heap    postgres    false            �            1259    142950    movimiento_seq    SEQUENCE     x   CREATE SEQUENCE public.movimiento_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.movimiento_seq;
       public          postgres    false            �            1259    139007    pais    TABLE     Y   CREATE TABLE public.pais (
    id integer NOT NULL,
    nombre character varying(255)
);
    DROP TABLE public.pais;
       public         heap    postgres    false            �            1259    139020    pais_seq    SEQUENCE     r   CREATE SEQUENCE public.pais_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.pais_seq;
       public          postgres    false            �            1259    139012    persona    TABLE     X  CREATE TABLE public.persona (
    id integer NOT NULL,
    apellido character varying(255),
    edad integer,
    nombre character varying(255),
    id_estado integer,
    id_pais integer,
    direccion character varying(255),
    genero character varying(255),
    identificacion character varying(255),
    telefono character varying(255)
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �            1259    139021    persona_seq    SEQUENCE     u   CREATE SEQUENCE public.persona_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.persona_seq;
       public          postgres    false                      0    142932    cliente 
   TABLE DATA           E   COPY public.cliente (id, contrasena, persona_id, estado) FROM stdin;
    public          postgres    false    217   (,                 0    142919    cuenta 
   TABLE DATA           c   COPY public.cuenta (id, numero_cuenta, saldo_inicial, tipo_cuenta, id_cliente, estado) FROM stdin;
    public          postgres    false    215   X,                 0    139002    estados 
   TABLE DATA           6   COPY public.estados (id, nombre, id_pais) FROM stdin;
    public          postgres    false    209   �,                 0    142945 
   movimiento 
   TABLE DATA           H   COPY public.movimiento (id, fecha, saldo, valor, id_cuenta) FROM stdin;
    public          postgres    false    219   �,                 0    139007    pais 
   TABLE DATA           *   COPY public.pais (id, nombre) FROM stdin;
    public          postgres    false    210   -                 0    139012    persona 
   TABLE DATA           ~   COPY public.persona (id, apellido, edad, nombre, id_estado, id_pais, direccion, genero, identificacion, telefono) FROM stdin;
    public          postgres    false    211   0-       $           0    0    cliente_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cliente_seq', 101, true);
          public          postgres    false    218            %           0    0 
   cuenta_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cuenta_seq', 101, true);
          public          postgres    false    216            &           0    0    estados_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.estados_seq', 1, false);
          public          postgres    false    212            '           0    0    movimiento_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.movimiento_seq', 101, true);
          public          postgres    false    220            (           0    0    pais_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('public.pais_seq', 1, false);
          public          postgres    false    213            )           0    0    persona_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.persona_seq', 101, true);
          public          postgres    false    214            ~           2606    142938    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    217            |           2606    142925    cuenta cuenta_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cuenta
    ADD CONSTRAINT cuenta_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cuenta DROP CONSTRAINT cuenta_pkey;
       public            postgres    false    215            v           2606    139006    estados estados_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.estados
    ADD CONSTRAINT estados_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.estados DROP CONSTRAINT estados_pkey;
       public            postgres    false    209            �           2606    142949    movimiento movimiento_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.movimiento
    ADD CONSTRAINT movimiento_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.movimiento DROP CONSTRAINT movimiento_pkey;
       public            postgres    false    219            x           2606    139011    pais pais_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pais DROP CONSTRAINT pais_pkey;
       public            postgres    false    210            z           2606    139018    persona persona_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    211            �           2606    142956 &   movimiento fk8veysyanipny5mpudj13t8873    FK CONSTRAINT     �   ALTER TABLE ONLY public.movimiento
    ADD CONSTRAINT fk8veysyanipny5mpudj13t8873 FOREIGN KEY (id_cuenta) REFERENCES public.cuenta(id);
 P   ALTER TABLE ONLY public.movimiento DROP CONSTRAINT fk8veysyanipny5mpudj13t8873;
       public          postgres    false    3196    219    215            �           2606    139032 #   persona fki431su34fh1345iup043lcsqu    FK CONSTRAINT     �   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT fki431su34fh1345iup043lcsqu FOREIGN KEY (id_pais) REFERENCES public.pais(id);
 M   ALTER TABLE ONLY public.persona DROP CONSTRAINT fki431su34fh1345iup043lcsqu;
       public          postgres    false    211    3192    210            �           2606    142940 #   cliente fkmc52upywn8gona2iiwwwphb92    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fkmc52upywn8gona2iiwwwphb92 FOREIGN KEY (persona_id) REFERENCES public.persona(id);
 M   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fkmc52upywn8gona2iiwwwphb92;
       public          postgres    false    217    3194    211            �           2606    142951 "   cuenta fkmkmi3xf6wrp0y1mdn8nm4weim    FK CONSTRAINT     �   ALTER TABLE ONLY public.cuenta
    ADD CONSTRAINT fkmkmi3xf6wrp0y1mdn8nm4weim FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);
 L   ALTER TABLE ONLY public.cuenta DROP CONSTRAINT fkmkmi3xf6wrp0y1mdn8nm4weim;
       public          postgres    false    217    3198    215            �           2606    139027 #   persona fknnqqxdh7of62vggs91bnkjvwy    FK CONSTRAINT     �   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT fknnqqxdh7of62vggs91bnkjvwy FOREIGN KEY (id_estado) REFERENCES public.estados(id);
 M   ALTER TABLE ONLY public.persona DROP CONSTRAINT fknnqqxdh7of62vggs91bnkjvwy;
       public          postgres    false    3190    211    209            �           2606    139022 #   estados fkrjyuro1vfi4gx7d0yf35cyp86    FK CONSTRAINT     �   ALTER TABLE ONLY public.estados
    ADD CONSTRAINT fkrjyuro1vfi4gx7d0yf35cyp86 FOREIGN KEY (id_pais) REFERENCES public.pais(id);
 M   ALTER TABLE ONLY public.estados DROP CONSTRAINT fkrjyuro1vfi4gx7d0yf35cyp86;
       public          postgres    false    3192    209    210                   x�3�442�4�,�25�453�42c���� 8A         @   x�3�4NC0�tu�qTpqUp��
��4�,�2�4�*��L��
M�WiL��=... m�"�            x�3��
�J��4����� ��         ,   x�3�4202�50�50S00�#NC�i�ej�_�W� �3�            x�3��*�J������ v�         p   x�3�N�����4�t*J�L����40�e���M�)A�����
��%��`Ua��
��@)���̲�"N����Ҝ̼|NC#sKSs#NK3c#sS�=... �/0e     