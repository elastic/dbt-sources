
with source as (

    select * from {{ source('raw_salesforce', 'timezone_business_hours_map_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        business_hours_id_c,
        business_hours_name_c,
        created_by_id,
        created_date,
        currency_iso_code,
        full_name_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
