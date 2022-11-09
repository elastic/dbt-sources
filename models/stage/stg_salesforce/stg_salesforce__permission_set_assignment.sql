
with source as (

    select * from {{ source('raw_salesforce', 'permission_set_assignment') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        assignee_id,
        permission_set_id,
        system_modstamp,
        permission_set_group_id,
        _fivetran_deleted,
        is_active,
        expiration_date

    from source

)

select * from renamed
