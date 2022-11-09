
with source as (

    select * from {{ source('raw_salesforce', 'datacloud_purchase_usage_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        datacloud_entity_type,
        description,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        purchase_type,
        system_modstamp,
        usage,
        user_id,
        user_type

    from source

)

select * from renamed
