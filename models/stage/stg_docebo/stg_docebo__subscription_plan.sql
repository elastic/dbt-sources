
with source as (

    select * from {{ source('raw_docebo', 'subscription_plan') }}

),

renamed as (

    select
        plan_id,
        plan_name,
        code,
        bundle_type,
        renewal_type,
        availability,
        validity_units,
        validity_period,
        plan_price,
        bundle_id,
        bundle_title,
        bundle_description,
        bundle_code,
        bundle_type_id,
        duration,
        enforce_limit,
        actions

    from source

)

select * from renamed
