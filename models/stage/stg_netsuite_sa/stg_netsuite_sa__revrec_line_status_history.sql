
with source as (

    select * from {{ source('raw_netsuite_sa', 'revrec_line_status_history') }}

),

renamed as (

    select
        revrec_line_status_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        execution_order,
        is_inactive,
        last_modified_date,
        parent_id,
        revrec_line_status_extid,
        revrec_line_status_name,
        partition_date

    from source

)

select * from renamed
