
with source as (

    select * from {{ source('raw_netsuite_sa', 'users__license_manager_recipients_map_history') }}

),

renamed as (

    select
        employee_id,
        users__license_manager_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
