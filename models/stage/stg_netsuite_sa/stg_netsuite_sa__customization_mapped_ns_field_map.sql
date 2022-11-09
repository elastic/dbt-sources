
with source as (

    select * from {{ source('raw_netsuite_sa', 'customization_mapped_ns_field_map') }}

),

renamed as (

    select
        customization2_id,
        customization_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed