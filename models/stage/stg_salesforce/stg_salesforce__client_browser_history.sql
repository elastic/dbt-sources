
with source as (

    select * from {{ source('raw_salesforce', 'client_browser_history') }}

),

renamed as (

    select
        partitiontime,
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
