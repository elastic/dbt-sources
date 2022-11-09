
with source as (

    select * from {{ source('raw_netsuite', 'competitoroppmap') }}

),

renamed as (

    select
        competitor_id,
        is_winner,
        notes,
        opportunity_id

    from source

)

select * from renamed
