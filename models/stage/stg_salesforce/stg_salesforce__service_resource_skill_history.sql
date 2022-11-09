
with source as (

    select * from {{ source('raw_salesforce', 'service_resource_skill_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        service_resource_skill_id

    from source

)

select * from renamed
