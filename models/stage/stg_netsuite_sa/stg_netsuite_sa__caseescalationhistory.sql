
with source as (

    select * from {{ source('raw_netsuite_sa', 'caseescalationhistory') }}

),

renamed as (

    select
        case_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        entity_id,
        escalation_action,
        escalation_date,
        escalator_id,
        message

    from source

)

select * from renamed
