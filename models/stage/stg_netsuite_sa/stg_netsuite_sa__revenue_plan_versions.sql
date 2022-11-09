
with source as (

    select * from {{ source('raw_netsuite_sa', 'revenue_plan_versions') }}

),

renamed as (

    select
        plan_version_id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        date_created,
        date_deleted,
        plan_id,
        plan_version

    from source

)

select * from renamed
