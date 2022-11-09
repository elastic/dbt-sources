
with source as (

    select * from {{ source('raw_netsuite_sa', 'report_preferences_mapping') }}

),

renamed as (

    select
        report_preferences_mapping_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        france_fec,
        is_inactive,
        last_modified_date,
        parent_id,
        report_preferences_mapping_ext,
        subsidiary_id,
        balance_sheet_closing,
        report,
        balance_sheet_opening,
        income_statement_closing

    from source

)

select * from renamed
