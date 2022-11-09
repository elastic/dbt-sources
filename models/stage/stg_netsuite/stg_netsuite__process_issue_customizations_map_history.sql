
with source as (

    select * from {{ source('raw_netsuite', 'process_issue_customizations_map_history') }}

),

renamed as (

    select
        customization_id,
        process_issue_id

    from source

)

select * from renamed
