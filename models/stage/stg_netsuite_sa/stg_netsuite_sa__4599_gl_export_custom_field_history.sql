
with source as (

    select * from {{ source('raw_netsuite_sa', '4599_gl_export_custom_field_history') }}

),

renamed as (

    select
        n_4599_gl_export_custom_field_,
        _fivetran_deleted,
        _fivetran_synced,
        custom_field_id,
        custom_list_id,
        date_created,
        date_deleted,
        is_inactive,
        label,
        last_modified_date,
        n_4599_gl_export_custom_fiel_0,
        n_4599_gl_export_custom_fiel_1,
        parent_id,
        partition_date

    from source

)

select * from renamed
