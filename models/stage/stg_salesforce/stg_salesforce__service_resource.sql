
with source as (

    select * from {{ source('raw_salesforce', 'service_resource') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        recur_omni_is_supervisor_c,
        related_record_id,
        resource_type,
        system_modstamp

    from source

)

select * from renamed
