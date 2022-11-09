
with source as (

    select * from {{ source('raw_salesforce', 'window_sticker_config_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        s_object_api_name_c,
        system_modstamp

    from source

)

select * from renamed
