
with source as (

    select * from {{ source('raw_netsuite_sa', 'planschedulemap') }}

),

renamed as (

    select
        plan_id,
        schedule_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted

    from source

)

select * from renamed
