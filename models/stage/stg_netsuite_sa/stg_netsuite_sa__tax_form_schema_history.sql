
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_form_schema_history') }}

),

renamed as (

    select
        tax_form_schema_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        description,
        is_inactive,
        last_modified_date,
        parent_id,
        tax_form_internal_id,
        tax_form_schema_extid,
        tax_form_schema_name,
        partition_date

    from source

)

select * from renamed
