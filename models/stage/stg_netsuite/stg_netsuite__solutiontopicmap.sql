
with source as (

    select * from {{ source('raw_netsuite', 'solutiontopicmap') }}

),

renamed as (

    select
        solution_id,
        topic_id

    from source

)

select * from renamed
