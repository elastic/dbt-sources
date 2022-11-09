
with source as (

    select * from {{ source('raw_netsuite_sa', 'competitoroppmap_history') }}

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
        opportunity_id,
        partition_date

    from source

)

select * from renamed
