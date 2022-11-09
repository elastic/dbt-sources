
with source as (

    select * from {{ source('raw_salesforce', 'sf_zd_support_type_map_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp,
        zendesk_value_c

    from source

)

select * from renamed
