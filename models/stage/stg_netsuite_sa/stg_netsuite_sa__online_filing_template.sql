
with source as (

    select * from {{ source('raw_netsuite_sa', 'online_filing_template') }}

),

renamed as (

    select
        online_filing_template_id,
        _fivetran_deleted,
        _fivetran_synced,
        content_0,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        online_filing_template_extid,
        online_filing_template_name,
        parent_id,
        type_0

    from source

)

select * from renamed
