
with source as (

    select * from {{ source('raw_netsuite_sa', 'sod_post_approval_proc') }}

),

renamed as (

    select
        sod_post_approval_proc_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_change_request_id,
        parent_id,
        sod_post_approval_proc_extid,
        status_id

    from source

)

select * from renamed
