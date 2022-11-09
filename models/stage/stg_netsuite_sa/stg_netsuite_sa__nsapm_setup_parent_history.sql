
with source as (

    select * from {{ source('raw_netsuite_sa', 'nsapm_setup_parent_history') }}

),

renamed as (

    select
        nsapm_setup_parent_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nsapm_setup_parent_extid,
        parent_id,
        partition_date

    from source

)

select * from renamed
