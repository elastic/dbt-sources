
with source as (

    select * from {{ source('raw_salesforce', 'mkto_si_best_bets_view_c') }}

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
        mkto_si_include_default_columns_c,
        mkto_si_max_pages_c,
        mkto_si_max_rows_c,
        mkto_si_object_c,
        mkto_si_owner_filter_c,
        mkto_si_show_records_with_negative_scores_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
