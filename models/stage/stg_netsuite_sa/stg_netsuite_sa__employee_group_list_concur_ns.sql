
with source as (

    select * from {{ source('raw_netsuite_sa', 'employee_group_list_concur_ns') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        employee_group_list_concur__ex,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
