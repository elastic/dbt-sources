
with source as (

    select * from {{ source('raw_salesforce', 'sharing_record_collection_member') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        collection_id,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        system_modstamp,
        user_or_group_id

    from source

)

select * from renamed
