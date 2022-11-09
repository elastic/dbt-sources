
with source as (

    select * from {{ source('raw_salesforce', 'conga_url_map_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        eula_url_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        sa_url_c,
        setup_owner_id,
        subsidiary_support_key_c,
        system_modstamp

    from source

)

select * from renamed
