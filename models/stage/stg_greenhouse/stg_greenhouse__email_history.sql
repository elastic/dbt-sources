
with source as (

    select * from {{ source('raw_greenhouse', 'email_history') }}

),

renamed as (

    select
        candidate_id,
        id,
        _fivetran_synced,
        body,
        created_at,
        from,
        subject,
        to,
        user_id,
        partition_date

    from source

)

select * from renamed
