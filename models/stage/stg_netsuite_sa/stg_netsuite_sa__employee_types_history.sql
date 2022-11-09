
with source as (

    select * from {{ source('raw_netsuite_sa', 'employee_types_history') }}

),

renamed as (

    select
        employee_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        isinactive,
        name,
        parent_id,
        partition_date

    from source

)

select * from renamed
