
with source as (

    select * from {{ source('raw_netsuite_sa', 'encryption_details_history') }}

),

renamed as (

    select
        encryption_details_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        encryption_details_extid,
        guid,
        id_0,
        is_inactive,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
