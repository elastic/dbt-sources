
with source as (

    select * from {{ source('raw_salesforce', 'sla_process') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        business_hours_id,
        created_by_id,
        created_date,
        description,
        is_active,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_viewed_date,
        name,
        name_norm,
        sobject_type,
        start_date_field,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
