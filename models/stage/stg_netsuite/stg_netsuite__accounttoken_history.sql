
with source as (

    select * from {{ source('raw_netsuite', 'accounttoken_history') }}

),

renamed as (

    select
        accounttoken_extid,
        accounttoken_id,
        date_created,
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
