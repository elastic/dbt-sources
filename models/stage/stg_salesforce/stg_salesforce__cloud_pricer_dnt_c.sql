
with source as (

    select * from {{ source('raw_salesforce', 'cloud_pricer_dnt_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        instance_type_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        region_c,
        region_ratio_c,
        system_modstamp,
        zone_c,
        value_c

    from source

)

select * from renamed
