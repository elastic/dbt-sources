
with source as (

    select * from {{ source('raw_netsuite_sa', 'sublocations_history') }}

),

renamed as (

    select
        sublocations_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        sublocations_extid,
        sublocations_name,
        partition_date

    from source

)

select * from renamed
