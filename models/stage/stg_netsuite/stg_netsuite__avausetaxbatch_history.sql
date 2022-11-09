
with source as (

    select * from {{ source('raw_netsuite', 'avausetaxbatch_history') }}

),

renamed as (

    select
        avausetaxbatch_extid,
        avausetaxbatch_id,
        avausetaxbatch_name,
        batch_name,
        batch_status,
        company_id,
        date_created,
        file_name_count,
        from_date,
        is_inactive,
        lasttransid,
        last_modified_date,
        parent_id,
        subsidiary_id,
        to_date,
        usetax_type,
        vendor_id

    from source

)

select * from renamed
