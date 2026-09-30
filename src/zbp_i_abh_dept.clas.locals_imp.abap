CLASS lhc_Department DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS get_instance_authorizations
      FOR INSTANCE AUTHORIZATION
      IMPORTING
        keys REQUEST requested_authorizations
        FOR Department
      RESULT result.

    METHODS get_global_authorizations
      FOR GLOBAL AUTHORIZATION
      IMPORTING
        REQUEST requested_authorizations
        FOR Department
      RESULT result.

ENDCLASS.


CLASS lhc_Department IMPLEMENTATION.

  METHOD get_instance_authorizations.

    LOOP AT keys ASSIGNING FIELD-SYMBOL(<key>).

      APPEND VALUE #(
        %tky = <key>-%tky

        %update = COND #(
          WHEN requested_authorizations-%update = if_abap_behv=>mk-on
          THEN if_abap_behv=>auth-allowed )

        %delete = COND #(
          WHEN requested_authorizations-%delete = if_abap_behv=>mk-on
          THEN if_abap_behv=>auth-allowed )

      ) TO result.

    ENDLOOP.

  ENDMETHOD.


  METHOD get_global_authorizations.

    IF requested_authorizations-%create = if_abap_behv=>mk-on.
      result-%create = if_abap_behv=>auth-allowed.
    ENDIF.

    IF requested_authorizations-%update = if_abap_behv=>mk-on.
      result-%update = if_abap_behv=>auth-allowed.
    ENDIF.

    IF requested_authorizations-%delete = if_abap_behv=>mk-on.
      result-%delete = if_abap_behv=>auth-allowed.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
