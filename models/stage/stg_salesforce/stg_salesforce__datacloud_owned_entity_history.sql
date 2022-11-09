
with source as (

    select * from {{ source('raw_salesforce', 'datacloud_owned_entity_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        data_dot_com_key,
        datacloud_entity_type,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        purchase_type,
        purchase_usage_id,
        system_modstamp,
        user_id

    from source

)

select * from renamed
