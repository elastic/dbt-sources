
with source as (

    select * from {{ source('raw_marketing', 'activity_log') }}

),

renamed as (

    select
        id,
        activity,
        activity_date,
        activity_type,
        activity_description,
        version,
        source,
        payload

    from source

)

select * from renamed
