
with source as (

    select * from {{ source('raw_netsuite_sa', 'accounttoken') }}

),

renamed as (

    select
        accounttoken_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounttoken_extid,
        date_created,
        date_deleted,
        emailid,
        expiration_time,
        is_inactive,
        last_modified_date,
        migration,
        okta_uid,
        parent_id,
        random_guid,
        status,
        token

    from source

)

select * from renamed
