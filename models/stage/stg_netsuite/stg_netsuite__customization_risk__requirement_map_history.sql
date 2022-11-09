
with source as (

    select * from {{ source('raw_netsuite', 'customization_risk__requirement_map_history') }}

),

renamed as (

    select
        customization_id,
        process_issue_id

    from source

)

select * from renamed
