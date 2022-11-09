
with source as (

    select * from {{ source('raw_salesforce', 'pdri_folder_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pdri_description_c,
        pdri_parent_folder_c,
        system_modstamp

    from source

)

select * from renamed