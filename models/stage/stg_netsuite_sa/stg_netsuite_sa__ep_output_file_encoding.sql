
with source as (

    select * from {{ source('raw_netsuite_sa', 'ep_output_file_encoding') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        ep_output_file_encoding_extid,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed