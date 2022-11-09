
with source as (

    select * from {{ source('raw_salesforce', 'user_app_menu_customization') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        application_id,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        owner_id,
        sort_order,
        system_modstamp

    from source

)

select * from renamed
