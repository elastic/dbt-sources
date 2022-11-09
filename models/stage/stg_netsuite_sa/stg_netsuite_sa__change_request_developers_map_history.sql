
with source as (

    select * from {{ source('raw_netsuite_sa', 'change_request_developers_map_history') }}

),

renamed as (

    select
        change_request_id,
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
