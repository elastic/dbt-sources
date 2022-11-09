
with source as (

    select * from {{ source('raw_salesforce', 'user_login') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        is_frozen,
        is_password_locked,
        last_modified_by_id,
        last_modified_date,
        user_id,
        _fivetran_deleted

    from source

)

select * from renamed
