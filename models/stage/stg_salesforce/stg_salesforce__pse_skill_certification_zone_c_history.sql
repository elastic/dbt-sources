
with source as (

    select * from {{ source('raw_salesforce', 'pse_skill_certification_zone_c_history') }}

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
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        pse_cascading_c,
        pse_group_c,
        pse_practice_c,
        pse_region_c,
        pse_skill_certification_c,
        system_modstamp

    from source

)

select * from renamed
