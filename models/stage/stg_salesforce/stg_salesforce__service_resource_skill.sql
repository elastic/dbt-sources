
with source as (

    select * from {{ source('raw_salesforce', 'service_resource_skill') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        effective_start_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        service_resource_id,
        skill_id,
        skill_number,
        system_modstamp

    from source

)

select * from renamed
