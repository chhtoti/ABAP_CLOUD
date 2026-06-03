CLASS zcl_chh_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_chh_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA it_art TYPE stANDARD TABLE OF ztbl_chh_art.

  it_art = VALUE #(
    ( client = sy-mandt  id_art = 17 descr = 'Mini colores' descr2 = 'Un mini estuche, con mini colores1'
    color = 'varios' piezas = 3 stock = 1
    url = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE_ce2m7ExJqw8ByA82LEtBucaKLH1gHPL1A&s' )
*    ( client = sy-mandt  id_art = 12 descr = 'Libro para colorear' descr2 = 'Libro Para Colorear Snoopy Arteterapia 48 Paginas1'
*    color = 'Blanco/Negro' piezas = 4 stock = 60
*    url = 'https://www.miniso.com.mx/libro-para-colorear-snoopy-arteterapia-48-paginas/p' )
*    ( client = sy-mandt  id_art = 13 descr = 'Lapicera' descr2 = 'Lapicera Dinosaurios Sintética Azul 20x10x5 cm1'
*    color = 'Blanco/Negro' piezas = 6 stock = 70
*    url = 'https://minisomx.vtexassets.com/arquivos/ids/337434-1600-1600?v=638671414507400000&width=1600&height=1600&aspect=true' )
*    ( client = sy-mandt  id_art = 14 descr = 'Set Plumones1' descr2 = 'Set Plumones Jurassic World Con Sello Sintético Multicolor 12 Piezas'
*    color = 'Blanco/Negro' piezas = 4 stock = 50
*    url = 'https://minisomx.vtexassets.com/arquivos/ids/337434-1600-1600?v=638671414507400000&width=1600&height=1600&aspect=true' )
*    ( client = sy-mandt  id_art = 15 descr = 'Libreta Planificadora' descr2 = 'Libreta Planificador Mensual Negra 15x21 cm Rayas 160 Hojas'
*    color = 'Blanco/Negro' piezas = 5 stock = 100
*    url = 'ttps://mhinisomx.vtexassets.com/arquivos/ids/273424-1600-1600?v=638228181757470000&width=1600&height=1600&aspect=true' )
    ).

    INSERT ztbl_chh_art FROM table @it_art.

    IF sy-subrc = 0.
        out->write( 'Insert successful' ).
        else.
        out->write( 'Incert wrong' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
