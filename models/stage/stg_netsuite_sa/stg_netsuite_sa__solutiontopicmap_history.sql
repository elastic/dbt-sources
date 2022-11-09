
with source as (

    select * from {{ source('raw_netsuite_sa', 'solutiontopicmap_history') }}

),

renamed as (

    select
        solution_id,
        topic_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
