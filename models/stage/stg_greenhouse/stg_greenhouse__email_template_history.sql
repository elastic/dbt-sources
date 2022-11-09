
with source as (

    select * from {{ source('raw_greenhouse', 'email_template_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        body,
        created_at,
        default,
        description,
        from,
        html_body,
        name,
        type,
        updated_at,
        user_id,
        partition_date

    from source

)

select * from renamed
