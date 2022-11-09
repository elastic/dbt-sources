
with source as (

    select * from {{ source('raw_netsuite_sa', 'revrec_extract_batch_history') }}

),

renamed as (

    select
        revrec_extract_batch_id,
        _fivetran_deleted,
        _fivetran_synced,
        batch_status_id,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        revrec_batch_file,
        revrec_extract_batch_extid,
        revrec_extract_batch_name,
        revrec_type_id,
        staged_batch_lines,
        partition_date

    from source

)

select * from renamed
