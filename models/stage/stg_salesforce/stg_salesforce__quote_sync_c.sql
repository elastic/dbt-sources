
with source as (

    select * from {{ source('raw_salesforce', 'quote_sync_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        opp_field_c,
        quote_field_c,
        setup_owner_id,
        skip_if_blank_c,
        system_modstamp

    from source

)

select * from renamed
