
with source as (

    select * from {{ source('raw_salesforce', 'content_folder_history') }}

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
        parent_content_folder_id,
        system_modstamp,
        featured_media_id

    from source

)

select * from renamed
