
with source as (

    select * from {{ source('raw_netsuite_sa', 'payroll_item_types_history') }}

),

renamed as (

    select
        payroll_item_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        name,
        parent_id,
        partition_date

    from source

)

select * from renamed
