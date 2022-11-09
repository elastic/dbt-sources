
with source as (

    select * from {{ source('raw_netsuite_sa', 'apm_setup_parent_history') }}

),

renamed as (

    select
        apm_setup_parent_id,
        _fivetran_deleted,
        _fivetran_synced,
        apm_setup_parent_extid,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
