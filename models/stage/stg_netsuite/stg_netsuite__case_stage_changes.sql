
with source as (

    select * from {{ source('raw_netsuite', 'case_stage_changes') }}

),

renamed as (

    select
        case_id,
        casestage,
        start_date

    from source

)

select * from renamed
