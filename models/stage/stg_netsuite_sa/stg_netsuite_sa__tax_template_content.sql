
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_template_content') }}

),

renamed as (

    select
        tax_template_content_id,
        _fivetran_deleted,
        _fivetran_synced,
        content_0,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        tax_template_content_extid,
        tax_template_id

    from source

)

select * from renamed
