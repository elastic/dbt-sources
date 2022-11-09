
with source as (

    select * from {{ source('raw_salesforce', 'installed_mobile_app') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        connected_application_id,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        status,
        system_modstamp,
        user_id,
        version

    from source

)

select * from renamed
