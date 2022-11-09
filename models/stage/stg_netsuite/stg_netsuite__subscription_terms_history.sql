
with source as (

    select * from {{ source('raw_netsuite', 'subscription_terms_history') }}

),

renamed as (

    select
        duration,
        is_inactive,
        name,
        term_extid,
        term_id,
        term_type_id,
        unit_id

    from source

)

select * from renamed
