
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_message_type_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_developer_name_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        fferpcore_description_c,
        fferpcore_expiry_cutoff_c,
        fferpcore_parent_c,
        fferpcore_storage_expiry_c

    from source

)

select * from renamed
