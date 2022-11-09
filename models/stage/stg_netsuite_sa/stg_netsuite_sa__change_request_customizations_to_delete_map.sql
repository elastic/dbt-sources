
with source as (

    select * from {{ source('raw_netsuite_sa', 'change_request_customizations_to_delete_map') }}

),

renamed as (

    select
        change_request_id,
        customization_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
