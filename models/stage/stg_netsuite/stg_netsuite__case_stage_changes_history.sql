
with source as (

    select * from {{ source('raw_netsuite', 'case_stage_changes_history') }}

),

renamed as (

    select
        casestage,
        case_id,
        start_date

    from source

)

select * from renamed
