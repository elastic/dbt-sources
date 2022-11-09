
with source as (

    select * from {{ source('raw_netsuite', 'caseescalationhistory_history') }}

),

renamed as (

    select
        case_id,
        entity_id,
        escalation_action,
        escalation_date,
        escalator_id,
        message

    from source

)

select * from renamed
