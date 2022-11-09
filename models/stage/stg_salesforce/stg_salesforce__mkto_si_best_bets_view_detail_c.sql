
with source as (

    select * from {{ source('raw_salesforce', 'mkto_si_best_bets_view_detail_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        mkto_si_best_bets_view_c,
        mkto_si_field_label_c,
        mkto_si_field_name_c,
        mkto_si_field_number_c,
        mkto_si_field_type_c,
        mkto_si_lookup_value_c,
        mkto_si_operator_c,
        mkto_si_show_field_c,
        mkto_si_value_c,
        name,
        system_modstamp

    from source

)

select * from renamed
