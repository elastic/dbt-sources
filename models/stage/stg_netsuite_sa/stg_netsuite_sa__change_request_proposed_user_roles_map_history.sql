
with source as (

    select * from {{ source('raw_netsuite_sa', 'change_request_proposed_user_roles_map_history') }}

),

renamed as (

    select
        change_request_id,
        role_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
