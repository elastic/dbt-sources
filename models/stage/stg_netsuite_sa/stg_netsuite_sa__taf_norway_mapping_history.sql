
with source as (

    select * from {{ source('raw_netsuite_sa', 'taf_norway_mapping_history') }}

),

renamed as (

    select
        taf_norway_mapping_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        mapping_category,
        mapping_key,
        parent_id,
        taf_norway_mapping_extid,
        partition_date

    from source

)

select * from renamed
