
with source as (

    select * from {{ source('raw_netsuite_sa', 'ep_dummy_list_history') }}

),

renamed as (

    select
        ep_dummy_list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        ep_dummy_list_extid,
        ep_dummy_list_name,
        is_inactive,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
