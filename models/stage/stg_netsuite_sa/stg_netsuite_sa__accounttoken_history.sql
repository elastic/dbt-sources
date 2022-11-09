
with source as (

    select * from {{ source('raw_netsuite_sa', 'accounttoken_history') }}

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
        token,
        partition_date

    from source

)

select * from renamed
