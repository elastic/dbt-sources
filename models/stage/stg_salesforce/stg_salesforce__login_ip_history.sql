
with source as (

    select * from {{ source('raw_salesforce', 'login_ip_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        challenge_method,
        challenge_sent_date,
        created_date,
        is_authenticated,
        source_ip,
        users_id,
        _fivetran_deleted

    from source

)

select * from renamed
