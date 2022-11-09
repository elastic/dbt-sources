
with source as (

    select * from {{ source('raw_salesforce', 'client_browser') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_date,
        full_user_agent,
        last_update,
        proxy_info,
        users_id,
        _fivetran_deleted

    from source

)

select * from renamed
