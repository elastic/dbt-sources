
with source as (

    select * from {{ source('raw_netsuite_sa', 'planschedulemap_history') }}

),

renamed as (

    select
        plan_id,
        schedule_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        partition_date

    from source

)

select * from renamed
