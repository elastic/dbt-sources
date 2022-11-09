
with source as (

    select * from {{ source('raw_docebo', 'subscription_bundle') }}

),

renamed as (

    select
        id,
        name,
        description,
        code,
        published,
        type,
        countplans,
        availability,
        period,
        period_unit,
        sub_items,
        visibility,
        type_id,
        plans,
        actions

    from source

)

select * from renamed
