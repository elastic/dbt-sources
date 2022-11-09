
with source as (

    select * from {{ source('raw_netsuite', 'revenue_plan_versions_history') }}

),

renamed as (

    select
        created_by_id,
        date_created,
        plan_id,
        plan_version,
        plan_version_id

    from source

)

select * from renamed
