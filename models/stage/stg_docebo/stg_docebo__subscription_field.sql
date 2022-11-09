
with source as (

    select * from {{ source('raw_docebo', 'subscription_field') }}

),

renamed as (

    select
        id,
        title,
        type,
        mandatory,
        position,
        subscription_type,
        options

    from source

)

select * from renamed
