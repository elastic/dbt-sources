
with source as (

    select * from {{ source('raw_netsuite_sa', 'planassignmap_history') }}

),

renamed as (

    select
        employee_id,
        plan_id,
        start_date,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        end_date,
        partition_date

    from source

)

select * from renamed
