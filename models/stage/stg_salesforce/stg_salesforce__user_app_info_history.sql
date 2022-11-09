
with source as (

    select * from {{ source('raw_salesforce', 'user_app_info_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        form_factor,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        system_modstamp,
        user_id,
        app_definition_id

    from source

)

select * from renamed
