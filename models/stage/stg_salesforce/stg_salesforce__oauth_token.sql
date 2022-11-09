
with source as (

    select * from {{ source('raw_salesforce', 'oauth_token') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        access_token,
        app_menu_item_id,
        app_name,
        created_date,
        delete_token,
        last_used_date,
        request_token,
        use_count,
        user_id,
        _fivetran_deleted

    from source

)

select * from renamed
