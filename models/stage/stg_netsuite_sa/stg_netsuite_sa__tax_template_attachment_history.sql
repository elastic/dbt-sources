
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_template_attachment_history') }}

),

renamed as (

    select
        tax_template_attachment_id,
        _fivetran_deleted,
        _fivetran_synced,
        attachment,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        tax_template_attachment_extid,
        tax_template_attachment_name,
        tax_template_id,
        partition_date

    from source

)

select * from renamed
