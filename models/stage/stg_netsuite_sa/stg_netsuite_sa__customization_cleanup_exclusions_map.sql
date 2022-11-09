
with source as (

    select * from {{ source('raw_netsuite_sa', 'customization_cleanup_exclusions_map') }}

),

renamed as (

    select
        cleanup_exclusions_id,
        customization_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
