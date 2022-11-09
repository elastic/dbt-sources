
with source as (

    select * from {{ source('raw_netsuite_sa', 'competitoroppmap') }}

),

renamed as (

    select
        competitor_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        is_winner,
        notes,
        opportunity_id

    from source

)

select * from renamed
