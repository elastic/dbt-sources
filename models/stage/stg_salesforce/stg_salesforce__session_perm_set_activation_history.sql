
with source as (

    select * from {{ source('raw_salesforce', 'session_perm_set_activation_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        auth_session_id,
        created_by_id,
        created_date,
        description,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        permission_set_id,
        system_modstamp,
        user_id,
        _fivetran_deleted

    from source

)

select * from renamed
