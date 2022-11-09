
with source as (

    select * from {{ source('raw_netsuite_sa', 'change_request_proposed_global_permissions_map') }}

),

renamed as (

    select
        change_request_id,
        permission__permission_level__,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
