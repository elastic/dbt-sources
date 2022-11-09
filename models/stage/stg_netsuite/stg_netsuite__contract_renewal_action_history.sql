
with source as (

    select * from {{ source('raw_netsuite', 'contract_renewal_action_history') }}

),

renamed as (

    select
        contract_renewal_action_extid,
        contract_renewal_action_id,
        contract_renewal_action_name,
        custom_action_handler,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        record_type

    from source

)

select * from renamed
