
with source as (

    select * from {{ source('raw_salesforce', 'login_geo_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        city,
        country,
        country_iso,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        latitude,
        login_time,
        longitude,
        postal_code,
        subdivision,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
